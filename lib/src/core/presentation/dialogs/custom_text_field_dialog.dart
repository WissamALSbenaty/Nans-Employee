import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/validators/custom_validator.dart';
import 'package:nans/src/core/presentation/widgets/close_widget.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/main_button.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldDialog extends StatefulWidget {
  final String title,mainActionText,textFieldTitle,dialogTextContent;
  final String? content;
  final CustomValidator textFieldValidator;

final void Function(String) onMainActionPressed;


const CustomTextFieldDialog({Key? key, required this.title,required this.mainActionText, this.content,
  required this.onMainActionPressed,required this.textFieldTitle,required this.dialogTextContent, required this.textFieldValidator,}):super(key: key);

  @override
  State<CustomTextFieldDialog> createState() => _CustomTextFieldDialogState();
}

class _CustomTextFieldDialogState extends State<CustomTextFieldDialog> {
  String currentTextFieldValue='';



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
          widget.dialogTextContent.translateWord,style: AppStyle.textTheme.titleMedium!.copyWith( color: AppColors.blackColor.shade800,fontWeight: FontWeight.bold),
        ),
        const CustomSizedBox(height: 8,),

        CustomTextField(
          validator: widget.textFieldValidator,
          title:widget.textFieldTitle,
          onChangedFunction: (value)=>currentTextFieldValue=value ,
        ),
      ],
    ),


    actions: [
      Center(
        child: MainButton(
            isLoading: false,
            width: 269,
            title: widget.mainActionText,
            onPressed: ()=>widget.onMainActionPressed(currentTextFieldValue)
        ),
      )]);
  }
}
