
import 'package:etloob/dependencies.dart';
import 'package:etloob/src/core/util/localization_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  static final TextTheme textTheme = TextTheme(
    headline1: TextStyle(
        fontSize: 32.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        ),
    headline2: TextStyle(
        fontSize: 28.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        ),
    headline3: TextStyle(
        fontSize: 24.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        ),
    headline4: TextStyle(
        fontSize: 20.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        ),
    bodyText1: TextStyle(
        fontSize: 20.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        ),
    bodyText2: TextStyle(
        fontSize: 16.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        ),
    subtitle1: TextStyle(
        fontSize: 14.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        ),
    subtitle2: TextStyle(
        fontSize: 12.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        ),
    overline: TextStyle(
        fontSize: 14.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        ),
  );

  static  List<BoxShadow> basicBoxShadow = [BoxShadow(
    spreadRadius: 1,
      offset: const Offset(-1, 5), color:Colors.black.withOpacity(0.2), blurRadius: 16.r)];
}

class AppColors {


  static const Color backgroundColor = Color(0xFFE5E5E5);
  static const Color yellow = Color(0xFFFFCD41);
  static const Color darkPink = Color(0xFFFF7556);
  static const Color red60 = Color(0xFFE47272);
  static const Color pink = Color(0xFFFFF5F6);
  static const Color secondaryYellow = Color(0xFFF9CC00);
  static const Color blue = Color(0xFFF5F6FE);
  static const Color green = Color(0xFFEEFFEB);
  static const Color darkGreen = Color(0xFF038929);
  static const Color lightGreen = Color(0xFFF0F9FF);
  static const Color lightYellow = Color(0xFFFEFDEB);
  static const Color darkYellow = Color(0xFFF0B100);
  static const Color whiteColor=Color(0xFFFFFFFF);
  static const Color purple=Color(0xFF4D24E1);

  static const MaterialColor blackColor=MaterialColor(0xFF171C34,{
    100:Color(0xFFE5E5E5),
    200:Color(0xFFCCCCCC),
    300:Color(0xFFACACAC),
    400:Color(0xFF999999),
    500:Color(0xFF828282),
    600:Color(0xFF666666),
    800:Color(0xFF333333),
    900:Color(0xFF171C34),
  });


  static const Color errorColor = Color(0xFFE30000);


}
