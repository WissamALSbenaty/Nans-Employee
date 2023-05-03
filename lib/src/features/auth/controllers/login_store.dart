


import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/Data/Errors/auth_errors.dart';
import 'package:etloob/src/Data/models/login_model.dart';
import 'package:etloob/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:etloob/src/core/controllers/app_controller.dart';
import 'package:etloob/src/core/controllers/custom_form_controller.dart';
import 'package:etloob/src/core/presentation/auto_router.dart';
import 'package:etloob/src/core/presentation/arguments/phone_number_submitting_arguments.dart';
import 'package:etloob/src/core/presentation/arguments/submit_new_password_arguments.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

@injectable
class LoginController extends CustomFormController{

  final IAuthRepository authRepository;
  final AppController appController;
  LoginController(this.authRepository, this.appController,super.logger,):super(
    fieldsNumber: 2,

    submitFunction: (values)async{
      await appController.login(LoginModel( phoneNumber: values[0]!, password: values[1]! ));
    },

    afterSuccessSubmit: (values,context)async{

      AutoRouter.of(context).popUntilRoot();
      AutoRouter.of(context).replace(HomeRoute());
    }
  );

  @action
Future<void> restorePassword(BuildContext context)async{
    AutoRouter.of(context).push(  SubmitPhoneNumberRoute(
        args: PhoneNumberSubmittingArguments(
          verificationReason: VerificationReason.ForgetPassword,
            pageTitle: "Please enter your phone number to confirm your phone number",
            afterSubmittingPhoneNumber: ({required String phoneNumber})async{
              if(!await authRepository.checkIfPhoneExist(phoneNumber)) {
                throw PhoneNumberIsntExistError();
              }
            },

            afterSuccessVerification: ({required String phoneNumber,required String otpCode })async {
              AutoRouter.of(context).push(
                  SubmitNewPasswordRoute(args: SubmitNewPasswordArguments(
                    onSubmitNewPassword: ( String password)async{
                      await authRepository.resetPassword(phoneNumber: phoneNumber,otpCode: otpCode,newPassword: password);
                    },
                  )));
            }
        )
    ));

  }

}