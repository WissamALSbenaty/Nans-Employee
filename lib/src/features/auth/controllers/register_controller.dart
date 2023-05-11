import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:nans/src/Data/models/login_model.dart';
import 'package:nans/src/Data/models/register_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:nans/src/core/controllers/custom_form_controller.dart';
import 'package:nans/src/core/presentation/arguments/confirm_phone_number_page_arguments.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:nans/src/core/presentation/snakebars/snack_bar_messages.dart';
import 'package:nans/src/core/util/enums.dart';
import 'package:injectable/injectable.dart';

part 'register_controller.g.dart';

@injectable
class RegisterController extends RegisterControllerBase with _$RegisterController{

  RegisterController(super.appController,super.authRepository,super.logger);
}

abstract class RegisterControllerBase extends CustomFormController with Store {

  final IAuthRepository authRepository;
  final AppController appController;

  RegisterControllerBase(this.appController,this.authRepository,super.logger,):super(fieldsNumber: 6,);
  @observable
  GenderType userGender=GenderType.Male;

  @action
  void toggleGenderType()=>userGender= userGender==GenderType.Male?GenderType.Female:GenderType.Male;
  @override
    Future<void> submitFunction() async{
    RegisterModel registerModel = RegisterModel(
      name: currentValues[0]!,
      fatherName:  currentValues[1]!,
      motherName:  currentValues[2]!,
      phoneNumber: currentValues[3]!,
      email: currentValues[4]!,
      password: currentValues[5]!,
      gender:userGender ,
    );
    await appController.register(registerModel);
  }


  @override
  Future<void> afterSuccessSubmit(BuildContext context)async {
    RegisterModel registerModel = RegisterModel(
      name: currentValues[0]!,
      fatherName: currentValues[1]!,
      motherName: currentValues[2]!,
      phoneNumber: currentValues[3]!,
      email: currentValues[4]!,
      password: currentValues[5]!,
      gender: userGender,
    );

    AutoRouter.of(context).push(ConfirmPhoneNumberRoute(args: ConfirmEmailPageArguments(
      email: registerModel.email,
      isOtpFromBackend: false,
      afterSuccessSubmitting: ({required String otpCode, required String email}) async {
        await appController.login(LoginModel(email: registerModel.email, password: registerModel.password));

        BottomSnackBar.show(SnackBarMessages.registeringSuccess, ToastType.success);

        AutoRouter.of(context).popUntilRoot();
        AutoRouter.of(context).replace(HomeRoute());
      },

    )));
  }
 }