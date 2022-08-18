
import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/Data/Errors/core_errors.dart';
import 'package:etloob/src/Data/Errors/custom_error.dart';
import 'package:etloob/src/Data/models/login_model.dart';
import 'package:etloob/src/Data/models/register_model.dart';
import 'package:etloob/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:etloob/src/core/presentation/auto_router.gr.dart';
import 'package:etloob/src/core/presentation/page_arguments/confirm_phone_number_page_arguments.dart';
import 'package:etloob/src/core/presentation/page_arguments/home_page_navigation_arguments.dart';
import 'package:etloob/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:etloob/src/core/presentation/validators/is_phone_number_validator.dart';
import 'package:etloob/src/core/presentation/validators/not_empty_validator.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_bloc.freezed.dart';
part 'register_state.dart';

@injectable
class RegisterBloc extends Cubit< RegisterState> {

  final IAuthRepository authRepository;
  RegisterBloc(this.authRepository) : super( RegisterState.initial());

    void initialized  (){
        emit( RegisterState.initial());
    }

    void registering(BuildContext context)async{
      if(state is Registering) {
        return ;
      }

      emit(Registering(phoneNumber:state.phoneNumber,referralCode: state.referralCode,
        firstName: state.firstName,lastName: state.lastName,
        password:state.password,));
      try {

        NotEmptyValidator().check(fieldName: 'First name', toCheckString: state.firstName);
        NotEmptyValidator().check(fieldName: 'Last name', toCheckString: state.lastName);
        NotEmptyValidator().check(fieldName: 'Password', toCheckString: state.password);
        IsPhoneNumberValidator().check(fieldName: 'Phone Number', toCheckString: state.phoneNumber);



        RegisterModel registerModel = RegisterModel(referralCode: state.referralCode,
            password: state.password,
            phoneNumber: state.phoneNumber,
            lastName: state.lastName,
            firstName: state.firstName
        );
        await authRepository.register(registerModel);
        emit(RegisterState(phoneNumber:state.phoneNumber,referralCode: state.referralCode,
          firstName: state.firstName,lastName: state.lastName,
          password:state.password,));

        AutoRouter.of(context).push(ConfirmPhoneNumberPageRoute(args: ConfirmPhoneNumberPageArguments(
          pageTitle: "You will receive a code via sms... please use it to verify your phone number",

            phoneNumber:state.phoneNumber,
            afterSuccessSubmitting: ({required String otpCode,required String phoneNumber}) async{
              await authRepository.login(LoginModel(phoneNumber: registerModel.phoneNumber, password: registerModel.password));


              context.clearData();
              AutoRouter.of(context).popUntilRoot();
              AutoRouter.of(context).replace(HomePageRoute(args: HomePageNavigationArguments()));
            },

        )));
      }
      on CustomError catch(e){
        emit(RegisterState(phoneNumber:state.phoneNumber,referralCode: state.referralCode,
          firstName: state.firstName,lastName: state.lastName,
          password:state.password,));

        BottomSnackBar.show(e.errorMessage, ToastType.error,
            onRetry: e is InternetConnectionError? ()=>registering(context):null
        );
      }

      }


    void passwordChanged (String password) {
        emit( state.copyWith(password: password));
      }

    void firstNameChanged  (String firstName){
        emit( state.copyWith(firstName: firstName));
      }

    void lastNameChanged (String lastName) {
        emit( state.copyWith(lastName: lastName));
      }

    void phoneNumberChanged (String phoneNumber){
        emit( state.copyWith(phoneNumber: phoneNumber.replaceAll('+963', '0')));
      }

    void referralCodeChanged (String referralCode){
        emit( state.copyWith(referralCode: referralCode));
      }

}
