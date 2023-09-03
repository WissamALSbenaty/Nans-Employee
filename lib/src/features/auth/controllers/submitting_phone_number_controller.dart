import 'package:nans/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:nans/src/core/controllers/base_controller.dart';
import 'package:nans/src/core/controllers/custom_form_mixin.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/arguments/confirm_phone_number_page_arguments.dart';
import 'package:nans/src/core/presentation/arguments/phone_number_submitting_arguments.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubmittingPhoneNumberController extends BaseController with CustomFormMixin{

  final IAuthRepository authRepository;
  final EmailSubmittingArguments args;
  SubmittingPhoneNumberController(@factoryParam this.args ,this.authRepository,super.logger,){
    initForm(fieldsNumber: 1);
  }

  @override
  Future<void> afterSuccessSubmit() async{
      appRouter.push(ConfirmPhoneNumberRoute(
      args: ConfirmEmailPageArguments(
      email:  currentValues[0]!,
      afterSuccessSubmitting:args.afterSuccessVerification,
        codeChecker: args.codeChecker,codeSender: args.codeSender,
      )));

    }

  @override
  Future<void> submitFunction() async{
    await args.afterSubmittingEmail(email: currentValues[0]!);
  }
 }