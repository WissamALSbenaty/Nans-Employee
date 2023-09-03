
import 'package:nans/dependencies.dart';
import 'package:nans/src/core/util/localization_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {

  static final TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(
        fontSize: 36.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: blackColor,
        ),
    displayMedium: TextStyle(
        fontSize: 32.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: blackColor,
        ),
    displaySmall: TextStyle(
        fontSize: 28.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: blackColor,
        ),
    headlineLarge: TextStyle(
        fontSize: 26.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: blackColor,
        ),
    headlineMedium: TextStyle(
        fontSize: 24.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: blackColor,
        ),
    headlineSmall: TextStyle(
      fontSize: 22.sp,
      height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
      color: blackColor,
    ),

    bodyLarge: TextStyle(
        fontSize: 20.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: blackColor,
        ),
    bodyMedium: TextStyle(
        fontSize: 18.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: blackColor,
        ),
    bodySmall: TextStyle(
        fontSize: 16.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: blackColor,
        ),
    titleLarge: TextStyle(
      fontSize: 14.sp,
      height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
      color: blackColor,
    ),
    titleMedium: TextStyle(
        fontSize: 12.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: blackColor,
        ),
    titleSmall: TextStyle(
        fontSize: 10.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: blackColor,
        ),

    labelSmall: TextStyle(
        fontSize: 8.sp,
        height: getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: blackColor,
        ),

  );
  static ButtonStyle buttonsStyle= ButtonStyle(
      padding: MaterialStateProperty.all(EdgeInsets.zero),
      backgroundColor:MaterialStateProperty.all(Colors.white),
      shape: MaterialStateProperty.all( RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r),))
  );
  static  List<BoxShadow> basicBoxShadow = [BoxShadow(
    spreadRadius: 1,
      offset: const Offset(-1, 5), color:Colors.black.withOpacity(0.2), blurRadius: 16.r)];

  static const Color backgroundColor = Color(0xFFE5E5E5);
  static const Color primary =  Color(0xFF2D3192);
  static const Color green = Color(0xFF038929);
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
