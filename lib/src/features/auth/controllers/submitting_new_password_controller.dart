import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nans/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:nans/src/core/controllers/custom_form_controller.dart';
import 'package:nans/src/core/presentation/arguments/submit_new_password_arguments.dart';
import 'package:nans/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:nans/src/core/presentation/snakebars/snack_bar_messages.dart';
import 'package:nans/src/core/util/enums.dart';
import 'package:injectable/injectable.dart';

@injectable
class SubmittingNewPasswordController extends CustomFormController{

  final IAuthRepository authRepository;
  final SubmitNewPasswordArguments args;

  SubmittingNewPasswordController(@factoryParam this.args,this.authRepository,super.logger,):super(fieldsNumber: 1,);
    @override
    Future<void> afterSuccessSubmit(BuildContext context)async {
      BottomSnackBar.show(SnackBarMessages.successChangingPassword, ToastType.success);
      AutoRouter.of(context).popUntilRoot();

    }

    @override
    Future<void> submitFunction() async{
      await args.onSubmitNewPassword(currentValues[0]!);
    }
 }