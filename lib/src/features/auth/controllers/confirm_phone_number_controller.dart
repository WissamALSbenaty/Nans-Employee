import 'package:nans/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:nans/src/core/controllers/base_controller.dart';
import 'package:nans/src/core/controllers/custom_form_mixin.dart';
import 'package:nans/src/core/presentation/arguments/confirm_phone_number_page_arguments.dart';
import 'package:injectable/injectable.dart';

@injectable
class ConfirmPhoneNumberController extends BaseController with CustomFormMixin {

  final IAuthRepository authRepository;
  final ConfirmEmailPageArguments args;

  ConfirmPhoneNumberController(@factoryParam this.args,this.authRepository,super.logger,){
    initForm(fieldsNumber: 1);
  }
  @override
  onInit()=>runStorePrimaryFunction(Future(()async{
        if(args.codeSender!=null) {
      await args.codeSender!(email: args.email);
    }
  }));

  @override
  Future<void> afterSuccessSubmit()async {
    await args.afterSuccessSubmitting(otpCode: currentValues[0]!,email: args.email);

  }

  @override
  Future<void> submitFunction() async{
    await args.codeChecker(otpCode: currentValues[0]!,email: args.email);
  }

}