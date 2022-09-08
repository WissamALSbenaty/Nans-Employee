import 'package:merit_driver/src/core/presentation/dialogs/custom_info_dialog.dart';
import 'package:merit_driver/src/core/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';

class ForceUpdateDialog extends StatelessWidget {
  const ForceUpdateDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomInfoDialog(
      title: 'Application Update !',
      content: 'This Version Is Not Supported Anymore , Please Update To The Last Version',
      mainActionText: 'Update',
      onMainActionPressed: ()=>StoreRedirect.redirect(androidAppId: 'com.$applicationPackageName',iOSAppId: iosAppId),
    );
  }
}
