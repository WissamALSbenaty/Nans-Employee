import 'dart:ui';

import 'package:etloob/dependencies.dart';
import 'package:etloob/src/core/util/localization_manager.dart';
import 'package:etloob/src/core/util/size_config.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static const fontFeaturesSettings = [FontFeature("liga", 0)];
  static final TextTheme textTheme = TextTheme(
    headline1: TextStyle(
        fontSize: SizeConfig.h(40),
        //fontWeight: FontWeight.w800,
        height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        fontFeatures: fontFeaturesSettings),
    headline2: TextStyle(
        fontSize: SizeConfig.h(28),
        //fontWeight: FontWeight.w800,
        height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        fontFeatures: fontFeaturesSettings),
    headline3: TextStyle(
        fontSize: SizeConfig.h(24),
        height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        fontFeatures: fontFeaturesSettings),
    headline4: TextStyle(
        fontSize: SizeConfig.h(20),
        //fontWeight: FontWeight.w500,
        height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        fontFeatures: fontFeaturesSettings),
    bodyText1: TextStyle(
        fontSize: SizeConfig.h(20),
        //fontWeight: FontWeight.normal,
        height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        fontFeatures: fontFeaturesSettings),
    bodyText2: TextStyle(
        fontSize: SizeConfig.h(16),
        //fontWeight: FontWeight.normal,
        height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        fontFeatures: fontFeaturesSettings),
    subtitle1: TextStyle(
        fontSize: SizeConfig.h(14),
        //fontWeight: FontWeight.bold,
        height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        fontFeatures: fontFeaturesSettings),
    subtitle2: TextStyle(
        fontSize: SizeConfig.h(12),
        //fontWeight: FontWeight.w500,
        height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: AppColors.blackColor,
        fontFeatures: fontFeaturesSettings),
    overline: TextStyle(
        fontSize: SizeConfig.h(14),
        //fontWeight: FontWeight.w400,
        color: AppColors.blackColor,
        fontFeatures: fontFeaturesSettings),
  );

  static const BoxShadow basicBoxShadow = BoxShadow(
      offset: Offset(0.0, 10), color: Color(0xFFC4C4C4), blurRadius: 20);
}

class AppColors {
  static const MaterialColor primaryColor = MaterialColor(0xFF01244A, {
    05: Color(0xFFF6F9FC),
    100: Color(0xFF66FFFF),
    300: Color(0xFF21B7E6),
    50: Color(0xFF0EBCB2),
    500: Color(0xFF01244A),
    700: Color(0xFF0E598F),
    800: Color(0xFF083752),
  });
  static const Color warningColor =  Color(0xFFFDCA40);

  static const Color backgroundColor = Color(0xFFE5E5E5);
  static const Color yellow = Color(0xFFFFCD41);
  static const Color darkPink = Color(0xFFFF7556);
  static const Color red60 = Color(0xFFE47272);
  static const Color pink = Color(0xFFFFF5F6);
  static const Color secondaryYellow = Color(0xFFF9CC00);
  static const Color blue = Color(0xFFF5F6FE);
  static const Color green = Color(0xFFEEFFEB);
  static const Color lightGreen = Color(0xFFF0F9FF);
  static const Color lightYellow = Color(0xFFFEFDEB);
  static const Color whiteColor=Color(0xFFFFFFFF);

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


  static ColorScheme colorSchema = ColorScheme(
    primaryContainer: primaryColor,
    surface: whiteColor,
    secondary: primaryColor.shade300,
    primary: primaryColor,
    background: backgroundColor,
    brightness: Brightness.light,
    error: errorColor,
    onBackground: blackColor,
    onError: whiteColor,
    onPrimary: whiteColor,
    onSecondary: whiteColor,
    onSurface: primaryColor,
    secondaryContainer: yellow,
  );
}
