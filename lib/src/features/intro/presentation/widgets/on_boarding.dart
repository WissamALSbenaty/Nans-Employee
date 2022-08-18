import 'package:easy_localization/easy_localization.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
        Lottie.asset(
          animationPath,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.w(32)),
          child: Column(
            children: [
              Text(title.tr(),
                  textAlign: TextAlign.center,
                  style: AppStyle.textTheme.headline2!.copyWith(fontWeight: FontWeight.bold)),
              SizedBox(
                height: SizeConfig.h(16),
              ),
              Text(
                description.tr(),
                style: AppStyle.textTheme.bodyText2!.copyWith(
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
