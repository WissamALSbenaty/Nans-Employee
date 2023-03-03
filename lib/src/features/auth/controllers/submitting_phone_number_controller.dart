import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/core/Data/repositories/abstract/i_auth_repository.dart';
import 'package:etloob/src/core/controllers/custom_form_controller.dart';
import 'package:etloob/src/core/presentation/auto_router.gr.dart';
import 'package:etloob/src/core/presentation/arguments/confirm_phone_number_page_arguments.dart';
import 'package:etloob/src/core/presentation/arguments/phone_number_submitting_arguments.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubmittingPhoneNumberController extends CustomFormController{

  final IAuthRepository authRepository;
  final PhoneNumberSubmittingArguments args;
  SubmittingPhoneNumberController(@factoryParam this.args ,this.authRepository):super(
    fieldsNumber: 1,

    submitFunction: (values)async{
      await args.afterSubmittingPhoneNumber(phoneNumber: values[0]!);
    },

    afterSuccessSubmit: (values,context)async{

      AutoRouter.of(context).push(ConfirmPhoneNumberPageRoute(
          args: ConfirmPhoneNumberPageArguments(
              phoneNumber:  values[0]!,verificationReason:  args.verificationReason,
              afterSuccessSubmitting:args.afterSuccessVerification,
              )));

       }
  );
 }