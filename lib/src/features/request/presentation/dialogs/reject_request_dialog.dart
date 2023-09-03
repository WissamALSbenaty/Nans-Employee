import 'package:flutter/material.dart';
import 'package:nans/src/core/presentation/dialogs/custom_text_field_dialog.dart';
import 'package:nans/src/core/presentation/validators/is_not_empty_validator.dart';
import 'package:nans/src/features/request/presentation/dialogs/change_stage_request_dialog.dart';

class RejectRequestDialog extends StatelessWidget {
  final void Function(String,String) onRejectRequest;
  const RejectRequestDialog({Key? key, required this.onRejectRequest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeStageRequestDialog(
        title: 'Are you sure ?',
        mainActionText: 'Submit',
        onMainActionPressed: onRejectRequest,
        dialogTextContent: 'You are about rejecting this request',
        );
  }
}
