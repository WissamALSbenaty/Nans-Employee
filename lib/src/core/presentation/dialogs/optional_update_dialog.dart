import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/dialogs/custom_info_dialog.dart';
import 'package:nans/src/core/util/constants.dart';
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
        onMainActionPressed: ()=>StoreRedirect.redirect(androidAppId: Constants.androidAppId,iOSAppId: Constants.iosAppId),
        secondActionText: 'Later',
        onSecondActionPressed:()=>appRouter.pop()
    );
  }
}
