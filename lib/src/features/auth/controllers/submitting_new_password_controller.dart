import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/core/Data/repositories/abstract/i_auth_repository.dart';
import 'package:etloob/src/core/controllers/custom_form_controller.dart';
import 'package:etloob/src/core/presentation/arguments/submit_new_password_arguments.dart';
import 'package:etloob/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:etloob/src/core/presentation/snakebars/snack_bar_messages.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubmittingNewPasswordController extends CustomFormController{

  final IAuthRepository authRepository;
  final SubmitNewPasswordArguments args;

  SubmittingNewPasswordController(@factoryParam this.args,this.authRepository):super(
    fieldsNumber: 1,

    submitFunction: (values)async{
      args.onSubmitNewPassword(values[0]!);
    },

    afterSuccessSubmit: (values,context)async{
      BottomSnackBar.show(SnackBarMessages.successChangingPassword, ToastType.success);
      AutoRouter.of(context).popUntilRoot();
       }
  );
 }