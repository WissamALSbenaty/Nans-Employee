import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryButton extends StatelessWidget {

  final String title;
  final double width;
  final void Function() onPress;


  const SecondaryButton({Key? key,this.width=291 ,required this.title, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width.w,
        height: 66.h,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: AppColors.yellow)
        ),

        child: Center(
          child: Text(title.translateWord,
            style:  AppStyle.textTheme.bodyText2!.copyWith(color: AppColors.yellow,fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
