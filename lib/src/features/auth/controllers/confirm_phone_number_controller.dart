import 'package:flutter/material.dart';
import 'package:nans/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:nans/src/core/controllers/custom_form_controller.dart';
import 'package:nans/src/core/presentation/arguments/confirm_phone_number_page_arguments.dart';
import 'package:injectable/injectable.dart';

@injectable
class ConfirmPhoneNumberController extends CustomFormController {

  final IAuthRepository authRepository;
  final ConfirmEmailPageArguments args;

  ConfirmPhoneNumberController(@factoryParam this.args,this.authRepository,super.logger,):super(fieldsNumber: 1);
  @override
  onInit()=>runStorePrimaryFunction(Future(()async{
        if(args.isOtpFromBackend) {
      await authRepository.sendConfirmationCode(email: args.email);
    }
  }));

  @override
  Future<void> afterSuccessSubmit(BuildContext context)async {
    await args.afterSuccessSubmitting(otpCode: currentValues[0]!,email: args.email);

  }

  @override
  Future<void> submitFunction() async{
    await authRepository.checkConfirmationCode(otpCode: currentValues[0]!,email: args.email);
  }

}