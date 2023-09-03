import 'package:nans/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:nans/src/core/controllers/base_controller.dart';
import 'package:nans/src/core/controllers/custom_form_mixin.dart';
import 'package:nans/src/core/presentation/arguments/submit_new_password_arguments.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:nans/src/core/presentation/snakebars/snack_bar_messages.dart';
import 'package:nans/src/core/util/enums.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubmittingNewPasswordController extends BaseController with CustomFormMixin{

  final IAuthRepository authRepository;
  final SubmitNewPasswordArguments args;

  SubmittingNewPasswordController(@factoryParam this.args,this.authRepository,super.logger,){
    initForm(fieldsNumber: 1);
}
    @override
    Future<void> afterSuccessSubmit()async {
      showSnackBar(SnackBarMessages.successChangingPassword, ToastType.success);
      appRouter.popUntilRoot();

    }

    @override
    Future<void> submitFunction() async{
      await args.onSubmitNewPassword(currentValues[0]!);
    }
 }