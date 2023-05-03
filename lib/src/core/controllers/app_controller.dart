
import 'package:auto_route/auto_route.dart';
import 'package:etloob/dependencies.dart';
import 'package:etloob/src/Data/api_helper.dart';
import 'package:etloob/src/Data/local_database_tables/app_database.dart';
import 'package:etloob/src/Data/models/app_config_model.dart';
import 'package:etloob/src/Data/models/app_translation_model.dart';
import 'package:etloob/src/Data/models/login_model.dart';
import 'package:etloob/src/Data/models/login_response_model.dart';
import 'package:etloob/src/Data/models/register_model.dart';
import 'package:etloob/src/Data/models/user_profile_model.dart';
import 'package:etloob/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:etloob/src/Data/repositories/abstract/i_utils_repository.dart';
import 'package:etloob/src/core/controllers/base_store.dart';
import 'package:etloob/src/core/presentation/arguments/confirm_phone_number_page_arguments.dart';
import 'package:etloob/src/core/presentation/auto_router.dart';
import 'package:etloob/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:etloob/src/core/presentation/snakebars/snack_bar_messages.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:etloob/src/core/util/localization_manager.dart';
import 'package:etloob/src/features/app/presentation/pages/app.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';


@singleton
class AppController extends AppControllerBase with _$AppController{
  AppController( super.authRepository, super.utilsRepository, super.appDatabase, super.localizationManager,super.logger);

}

abstract class AppControllerBase extends BaseStoreController with Store {


  final IUtilsRepository utilsRepository;
  final IAuthRepository authRepository;
  final AppDatabase appDatabase;
  final LocalizationManager localizationManager;

  late ReactionDisposer confirmAccountReaction;
  AppControllerBase(this.authRepository,this.utilsRepository, this.appDatabase, this.localizationManager,super.logger){

    confirmAccountReaction=confirmAccountReactionGetter();
    loadData();
  }





  @observable
  AppConfigModel? appConfigModel;

  @observable
  UserProfileModel? userProfileModel;

  @observable
  User? currentUser;

  @observable
  AppTranslationModel? applicationTranslationModel;

  @action
  Future<void> changeAppLanguage(BuildContext context)async{
    localizationManager.toggleLanguage(context);
    loadData();
  }

  @action
  Future<void> loadData()=>runStorePrimaryFunction(Future(()async{
    // For language Initialization
    await Future.delayed(const Duration(seconds: 1));

    bool isAuthenticatedUser = false;
    try {
      currentUser = await appDatabase.getUser();
      if (currentUser!.phoneNumber.isNotEmpty && currentUser!.password.isNotEmpty) {
        isAuthenticatedUser = true;
        getIt<ApiHelper>().setToken(currentUser!.token);
      }
    }
    catch (e) {
      isAuthenticatedUser = false;
    }
    List<Future> dataGetters = [
      if(isAuthenticatedUser)
        ...[
          refreshProfile(),
          authRepository.refreshToken(),
          authRepository.updateFirebaseToken(),
        ],
      utilsRepository.getAppConfig().then((value) => appConfigModel = value),
      utilsRepository.getAppTranslation().then((value) => applicationTranslationModel = value),
    ];


    await Future.wait(dataGetters);


  }));

  @action
  Future<void> refreshProfile()async{
    await authRepository.getUserProfile().then((value) => userProfileModel = value);
  }


  @action
  Future<void> changePhoneNumber(String newPhoneNumber,BuildContext context)=>runStoreSecondaryFunction(Future(()async{
    userProfileModel=await authRepository.changePhoneNumber(phoneNumber: newPhoneNumber);
    currentUser=await appDatabase.getUser();

    BottomSnackBar.show(SnackBarMessages.successChangingPhoneNumber, ToastType.success);
    AutoRouter.of(context).popUntilRoot();
  }));

  @action
  Future<void> changePassword({required String oldPassword,required String newPassword,})=>runStoreSecondaryFunction(Future(()async{
    await authRepository.changePassword(oldPassword: oldPassword, newPassword: newPassword);
  }));

  @action
  Future<void> logout()=>runStoreSecondaryFunction(Future(()async{
    await authRepository.logout();
    userProfileModel=null;
    currentUser=null;}));


  @action
  Future<void> login(LoginModel loginModel)async{
    LoginResponseModel loginResponseModel =await authRepository.login(loginModel);
    userProfileModel=loginResponseModel.user;
    currentUser=await appDatabase.getUser();

  }

  @action
  Future<void> loginAsGuest()async{
    await authRepository.loginAsGuest();
    currentUser=await appDatabase.getUser();
    userProfileModel=null;
  }


  @action
  Future<void> register(RegisterModel registerModel)async{
    LoginResponseModel loginResponseModel =await authRepository.register(registerModel);
    userProfileModel=loginResponseModel.user;
  }



  @action
  Future<void> deleteAccount(String userInputPassword,BuildContext context)=>runStoreSecondaryFunction(Future(()async{
    await authRepository.deleteAccount(userInputPassword: userInputPassword);
    userProfileModel=null;
    currentUser=null;
    AutoRouter.of(context).popUntilRoot();
  }),onCatchError: (){
    AutoRouter.of(context).pop();
  });

  ReactionDisposer confirmAccountReactionGetter(){
    return  reaction((_) => userProfileModel, (value) {
      if ((currentUser != null) && (value?.accountConfirmation == false)) {
        Future.delayed(const Duration(seconds: 3)).then((value) =>
            appRouter.push(ConfirmPhoneNumberRoute(args: ConfirmPhoneNumberPageArguments(
              phoneNumber: currentUser!.phoneNumber,
              verificationReason: VerificationReason.VerifyAccount,
              isOtpFromBackend: true,
              afterSuccessSubmitting: ({required String otpCode, required String phoneNumber}) async {

                login(LoginModel(phoneNumber: currentUser!.phoneNumber,
                    password: currentUser!.password));

                BottomSnackBar.show(SnackBarMessages.registeringSuccess, ToastType.success);

                appRouter.popUntilRoot();
              },

            ))));
      }
    });
  }

  void dispose() {
    confirmAccountReaction();
  }
}