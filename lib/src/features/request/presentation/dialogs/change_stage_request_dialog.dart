
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/dependencies.dart';
import 'package:nans/src/core/controllers/text_field_dialog_controller.dart';
import 'package:nans/src/core/presentation/style.dart';

import 'package:nans/src/core/presentation/validators/custom_validator.dart';
import 'package:nans/src/core/presentation/validators/is_not_empty_validator.dart';
import 'package:nans/src/core/presentation/validators/is_not_empty_validator.dart';
import 'package:nans/src/core/presentation/widgets/close_widget.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/main_button.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/form_controller_text_field.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/features/request/controllers/change_stage_request_dialog_controller.dart';
import 'package:nans/src/features/request/controllers/change_stage_request_dialog_controller.dart';

class ChangeStageRequestDialog extends StatefulWidget {
  final String title,mainActionText,dialogTextContent;
  final String? content;
  final void Function(String,String) onMainActionPressed;


  const ChangeStageRequestDialog({Key? key, required this.title,required this.mainActionText, this.content,
    required this.onMainActionPressed,required this.dialogTextContent, }):super(key: key);

  @override
  State<ChangeStageRequestDialog> createState() => _ChangeStageRequestDialogState();
}

class _ChangeStageRequestDialogState extends State<ChangeStageRequestDialog> {
  late ChangeStageRequestDialogController controller;
  @override
  void initState() {
    controller=getIt<ChangeStageRequestDialogController>(param1: widget.onMainActionPressed);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        titlePadding: EdgeInsets.all(16.h),
        contentPadding: EdgeInsets.all(8.h),
        actionsPadding: EdgeInsets.all(8.h),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        backgroundColor: Colors.white,

        title: Row(
          children: [
            Text(
              widget.title.translateWord,style: AppStyle.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const CloseWidget(),
          ],
        ),
        content:Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [


            const CustomSizedBox(height: 8,),
            Text(
              widget.dialogTextContent.translateWord,style: AppStyle.textTheme.titleMedium!.copyWith( color: AppStyle.blackColor.shade800,fontWeight: FontWeight.bold),
            ),
            const CustomSizedBox(height: 8,),

            Form(
              key: controller.formKey,
              child: Column(
                children: [
                  FormControllerTextField(
                    validator: IsNotEmptyValidator(),
                    title:"Header",
                    fieldIndex: 0,formController: controller,
                  ),
                  CustomSizedBox(height: 8,),

                  FormControllerTextField(
                    validator: IsNotEmptyValidator(),
                    title:"Description",
                    fieldIndex: 1,formController: controller,
                  ),
                ],
              ),
            ),
          ],
        ),


        actions: [
          Center(
            child: MainButton(
                isLoading: false,
                width: 269,
                title: widget.mainActionText,
                onPressed:  controller.submitForm
            ),
          )]);
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

}
