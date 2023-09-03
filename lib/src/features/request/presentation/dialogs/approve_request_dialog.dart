import 'package:flutter/material.dart';
import 'package:nans/src/core/presentation/dialogs/custom_text_field_dialog.dart';
import 'package:nans/src/features/request/presentation/dialogs/change_stage_request_dialog.dart';

class ApproveRequestDialog extends StatelessWidget {
  final void Function(String,String) onApproveRequest;
  const ApproveRequestDialog({Key? key, required this.onApproveRequest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeStageRequestDialog(
        title: 'Approve request',
        mainActionText: 'Submit',
        onMainActionPressed: onApproveRequest,
        dialogTextContent: 'Please write the appropriate result for this stage',
        );
  }
}
