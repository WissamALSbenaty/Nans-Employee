import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/core/controllers/app_controller.dart';
import 'package:etloob/src/core/presentation/dialogs/custom_info_dialog.dart';
import 'package:etloob/src/core/util/mixins.dart';
import 'package:flutter/material.dart';

class LogoutDialog extends StatelessWidget with WidgetStoreCreatorMixin<AppController> {
  LogoutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomInfoDialog(
        title: 'Are You Sure ?',
        mainActionText: 'Logout',
        onMainActionPressed:()async{
          await createdStore.logout();
          AutoRouter.of(context).popUntilRoot();
        },
        secondActionText: 'Cancel',
        onSecondActionPressed:()=>AutoRouter.of(context).pop(),

    );
  }
}
