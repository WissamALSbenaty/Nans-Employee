import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/dialogs/custom_info_dialog.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:flutter/material.dart';

class LogoutDialog extends StatelessWidget with WidgetControllerCreatorMixin<AppController> {
  LogoutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomInfoDialog(
        title: 'Are You Sure ?',
        mainActionText: 'Logout',
        onMainActionPressed:()async{
          await createdController.logout();
          appRouter.popUntilRoot();
        },
        secondActionText: 'Cancel',
        onSecondActionPressed:()=>appRouter.pop(),

    );
  }
}
