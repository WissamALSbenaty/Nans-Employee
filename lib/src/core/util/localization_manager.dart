

import 'package:easy_localization/easy_localization.dart';
import 'package:nans/src/core/presentation/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:injectable/injectable.dart';
import 'package:nans/src/core/presentation/auto_router.dart';

@singleton
class LocalizationManager{
  bool isEnglishLanguage=true;

  void toggleLanguage(){
    EasyLocalization.of(appRouter.navigatorKey.currentContext!)!.setLocale(isEnglishLanguage? const Locale('ar') : const Locale('en'));
    isEnglishLanguage=!isEnglishLanguage;
  }

  Widget getHorizontalArrowIcon({required double height,bool isLeftInEnglish=true,
    required void Function()? onTap}){

    return GestureDetector(
      onTap: onTap,
      child: Center(child: isLeftInEnglish? SvgPicture.asset(
          isEnglishLanguage? Assets.leftArrow:Assets.rightArrow,height:height.r,
        width: height.r
      ): SvgPicture.asset(
          !isEnglishLanguage? Assets.leftArrow:Assets.rightArrow,height:height.r,
          width: height.r
      ) ),
    );
  }


}