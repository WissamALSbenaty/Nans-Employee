import 'package:nans/src/core/presentation/dialogs/custom_info_dialog.dart';
import 'package:nans/src/core/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';

class ForceUpdateDialog extends StatelessWidget {
  const ForceUpdateDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomInfoDialog(
      title: 'Application Update !',
      content: 'This Version Is Not Supported Anymore , Please Update To The Last Version',
      mainActionText: 'Update',isDismissible: false,
      onMainActionPressed: ()=>StoreRedirect.redirect(androidAppId: Constants.androidAppId,iOSAppId:Constants.iosAppId),
    );
  }
}
