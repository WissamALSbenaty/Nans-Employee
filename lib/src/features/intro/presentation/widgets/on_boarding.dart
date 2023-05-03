import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding extends StatelessWidget {
  final int pageNumber;
  final String title, description, animationPath;

  const OnBoarding({Key? key,
    required this.pageNumber,
    required this.title,
    required this.description,
    required this.animationPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*Lottie.asset(
          animationPath,
        ),*/
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            children: [
              Text(title.translateWord,
                  textAlign: TextAlign.center,
                  style: AppStyle.textTheme.displayMedium!.copyWith(fontWeight: FontWeight.bold)),
              SizedBox(
                height: 16.h,
              ),
              Text(
                description.translateWord,
                style: AppStyle.textTheme.bodyMedium!.copyWith(
                  color: AppColors.blackColor.shade500,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        )
      ],
    );
  }
}
