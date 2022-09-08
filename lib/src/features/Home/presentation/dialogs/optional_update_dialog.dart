import 'package:auto_route/auto_route.dart';
import 'package:merit_driver/src/core/presentation/dialogs/custom_info_dialog.dart';
import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';

class OptionalUpdateDialog extends StatelessWidget {
  const OptionalUpdateDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomInfoDialog(
        title: 'Update Available !',
        content: 'Update The Application For More Offers And Discounts',
        mainActionText: 'Update',
        onMainActionPressed: ()=>StoreRedirect.redirect(androidAppId: 'com.etloob',iOSAppId: '1483218907'),
        secondActionText: 'Later',
        onSecondActionPressed:()=>AutoRouter.of(context).pop()
    );
  }
}
