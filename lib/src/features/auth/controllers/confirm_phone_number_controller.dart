import 'package:etloob/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:etloob/src/core/controllers/custom_form_controller.dart';
import 'package:etloob/src/core/presentation/arguments/confirm_phone_number_page_arguments.dart';
import 'package:injectable/injectable.dart';

@injectable
class ConfirmPhoneNumberController extends CustomFormController {

  final IAuthRepository authRepository;
  final ConfirmPhoneNumberPageArguments args;

  ConfirmPhoneNumberController(@factoryParam this.args,this.authRepository,super.logger,):super(
    fieldsNumber: 1,

    submitFunction: (values)async{
      await authRepository.checkConfirmationCode(otpCode: values[0]!,phoneNumber: args.phoneNumber,verificationReason: args.verificationReason);
     },

    afterSuccessSubmit: (values,context)async{
      await args.afterSuccessSubmitting(otpCode: values[0]!,phoneNumber: args.phoneNumber);

    }
  );

  @override
  onInit()=>runStorePrimaryFunction(Future(()async{
        if(args.isOtpFromBackend) {
      await authRepository.sendConfirmationCode(phoneNumber: args.phoneNumber, verificationReason: args.verificationReason);
    }
  }));

}