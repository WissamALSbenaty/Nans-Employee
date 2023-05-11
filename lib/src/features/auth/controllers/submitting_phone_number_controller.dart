import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nans/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:nans/src/core/controllers/custom_form_controller.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/arguments/confirm_phone_number_page_arguments.dart';
import 'package:nans/src/core/presentation/arguments/phone_number_submitting_arguments.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubmittingPhoneNumberController extends CustomFormController{

  final IAuthRepository authRepository;
  final EmailSubmittingArguments args;
  SubmittingPhoneNumberController(@factoryParam this.args ,this.authRepository,super.logger,):super(fieldsNumber: 1,);

  @override
  Future<void> afterSuccessSubmit(BuildContext context) async{
      AutoRouter.of(context).push(ConfirmPhoneNumberRoute(
      args: ConfirmEmailPageArguments(
      email:  currentValues[0]!,
      afterSuccessSubmitting:args.afterSuccessVerification,isOtpFromBackend: args.isOtpFromBackend
      )));

    }

  @override
  Future<void> submitFunction() async{
    await args.afterSubmittingEmail(email: currentValues[0]!);
  }
 }