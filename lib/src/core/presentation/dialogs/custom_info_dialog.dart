import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/close_widget.dart';
import 'package:etloob/src/core/presentation/widgets/main_button.dart';
import 'package:etloob/src/core/presentation/widgets/negative_button.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInfoDialog extends StatelessWidget {
  final String title,mainActionText;
  final String? content,secondActionText;
  final bool isDismissible;
  final void Function() onMainActionPressed;
  final void Function()? onSecondActionPressed;


  const CustomInfoDialog({Key? key, required this.title,required this.mainActionText, this.content,
    this.secondActionText,required this.onMainActionPressed, this.isDismissible=true,
    this.onSecondActionPressed}):assert(
    !((secondActionText!=null && onSecondActionPressed==null )||(secondActionText==null && onSecondActionPressed!=null ))
  ), super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.all( 16.h),
      contentPadding: EdgeInsets.all( 8.h),
      actionsPadding: EdgeInsets.all( 8.h),

      backgroundColor: AppColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),

      title: Row(
            children: [
              Text(
                title.translateWord,style: AppStyle.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              if(isDismissible)
              const CloseWidget(),
            ],
          ),

      content:content!=null?  Text(
        content!.translateWord,style: AppStyle.textTheme.titleMedium,
      ):null,


      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MainButton(
              isLoading: false,
                width: 114,
                title: mainActionText,
                onPressed: onMainActionPressed
            ),
        if(secondActionText!=null)
        ...[
          NegativeButton(title: secondActionText!,
            width: 114,
            onPressed: onSecondActionPressed!,
        )]
          ],
        ),

      ],

    );
  }
}
