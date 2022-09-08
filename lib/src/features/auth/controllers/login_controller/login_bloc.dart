
import 'package:auto_route/auto_route.dart';
import 'package:merit_driver/src/Data/Errors/custom_error.dart';
import 'package:merit_driver/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:merit_driver/src/Data/models/login_model.dart';
import 'package:merit_driver/src/core/presentation/auto_router.gr.dart';
import 'package:merit_driver/src/core/presentation/page_arguments/phone_number_submitting_arguments.dart';
import 'package:merit_driver/src/core/presentation/page_arguments/submit_new_password_arguments.dart';
import 'package:merit_driver/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:merit_driver/src/core/presentation/validators/is_phone_number_validator.dart';
import 'package:merit_driver/src/core/presentation/validators/not_empty_validator.dart';
import 'package:merit_driver/src/core/util/enums.dart';
import 'package:merit_driver/src/core/util/extentions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Cubit< LoginState> {


  final IAuthRepository authRepository;
  LoginBloc(this.authRepository) : super( LoginState.initial());


  void initialized ()async{
    emit( LoginState.initial());
  }

  void logging (BuildContext context)async{

    if(state is Logging) {
      return ;
    }

    emit(Logging(phoneNumber:state.phoneNumber, password:state.password,));
    try {

    IsPhoneNumberValidator().check(fieldName: 'Phone Number', toCheckString: state.phoneNumber);
    NotEmptyValidator().check(fieldName: 'Password', toCheckString: state.password);

      await authRepository.login(LoginModel(phoneNumber: state.phoneNumber, password: state.password));


      context.clearData();
      emit(LoginState.login(phoneNumber:state.phoneNumber, password:state.password,));

      AutoRouter.of(context).push(WelcomePageRoute(args: WelcomePageArguments(title: 'Welcome !')));
    }
    on CustomError catch(e){
      emit(LoginState.login(phoneNumber:state.phoneNumber, password:state.password,));
      BottomSnackBar.show(e.errorMessage, ToastType.error,);
    }

  }

  void restorePassword(BuildContext context)async{
    AutoRouter.of(context).push(  SubmitPhoneNumberPageRoute(
        args: PhoneNumberSubmittingArguments(
          totalPages: 3,currentPage: 1,
          pageTitle: "Please enter your phone number to confirm your phone number",

          afterSubmittingPhoneNumber: ({required String phoneNumber})async{},

            afterSuccessVerification: ({required String phoneNumber,required String otpCode })async {

                AutoRouter.of(context).push(
                    SubmitNewPasswordPageRoute(args: SubmitNewPasswordArguments(
                      currentPage: 3,totalPages: 3,
                        phoneNumber: phoneNumber,afterSubmittingNewPassword: (newPassword) async{
                        authRepository.resetPassword(phoneNumber: phoneNumber, newPassword: newPassword);
                           AutoRouter.of(context).push( WelcomePageRoute(
                        args: WelcomePageArguments(title: 'Welcome Again') )  );
                        })
                    ));
              }
            )
    ));

  }

  void passwordChanged (String password)async => emit( state.copyWith(password:password));
  void phoneNumberChanged (String phoneNumber)async => emit( state.copyWith(phoneNumber:phoneNumber.replaceAll('+963', '0')));

}
