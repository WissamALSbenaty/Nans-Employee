
import 'package:nans/dependencies.dart';
import 'package:nans/src/core/util/localization_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {

  static final TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(
        fontSize: 32.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        ),
    displayMedium: TextStyle(
        fontSize: 28.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        ),
    displaySmall: TextStyle(
        fontSize: 24.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        ),
    headlineMedium: TextStyle(
        fontSize: 20.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        ),
    bodyLarge: TextStyle(
        fontSize: 20.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        ),
    bodyMedium: TextStyle(
        fontSize: 16.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        ),

    titleMedium: TextStyle(
        fontSize: 14.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        ),
    titleSmall: TextStyle(
        fontSize: 12.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        ),
    labelSmall: TextStyle(
        fontSize: 8.sp,
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
  static const Color pink = Color(0xFFFFF5F6);
  static const Color blue = Color(0xFFF5F6FE);

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
