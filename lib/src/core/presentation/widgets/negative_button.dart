import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NegativeButton extends StatelessWidget {

  final String title;
  final void Function() onPressed;
  final double width;

  const NegativeButton({Key? key, required this.title, required this.onPressed, this.width=291}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width.w,
        height: 66.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: AppColors.whiteColor,
            boxShadow: AppStyle.basicBoxShadow,
            border: Border.all(color: AppColors.darkPink)),
        child: Center(
          child: Text(
            title.translateWord,
            style: AppStyle.textTheme.bodyText2!.copyWith(
                color: AppColors.darkPink, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
