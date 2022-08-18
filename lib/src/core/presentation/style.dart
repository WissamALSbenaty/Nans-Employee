import 'dart:ui';

import 'package:etloob/dependencies.dart';
import 'package:etloob/src/core/util/localization_manager.dart';
import 'package:etloob/src/core/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class ThemeManager{
  final LocalizationManager localizationManager;
  bool isDarkMode=false;

  ThemeManager(this.localizationManager);

  void toggleIsDarkMode(){
    isDarkMode=!isDarkMode;
  }

  ThemeData getTheme()=>ThemeData(
    textTheme: _getTextTheme(),
    scaffoldBackgroundColor: isDarkMode? : ,
    primaryColorDark: ,
    primaryColorLight: ,
    errorColor: ,
    appBarTheme: ,



  );

  TextTheme _getTextTheme ()=>  TextTheme(

      headline1: TextStyle(
      fontSize: SizeConfig.h(40),
      height:localizationManager.isEnglishLanguage?1.3:1,
      color: isDarkMode?black:white,
      ),
      headline2: TextStyle(
      fontSize: SizeConfig.h(28),
      height:localizationManager.isEnglishLanguage?1.3:1,
      color: isDarkMode?black:white,
      ),
      headline3: TextStyle(
      fontSize: SizeConfig.h(24),
      height:localizationManager.isEnglishLanguage?1.3:1,
      color: isDarkMode?black:white,
      ),
      headline4: TextStyle(
      fontSize: SizeConfig.h(20),
      height:localizationManager.isEnglishLanguage?1.3:1,
      color: isDarkMode?black:white,
      ),
      headline5: TextStyle(
        fontSize: SizeConfig.h(20),
        height:localizationManager.isEnglishLanguage?1.3:1,
        color: isDarkMode?black:white,
      ),
      bodyText1: TextStyle(
      fontSize: SizeConfig.h(20),
      height:localizationManager.isEnglishLanguage?1.3:1,
      color: isDarkMode?black:white,
      ),
      bodyText2: TextStyle(
      fontSize: SizeConfig.h(16),
      height:localizationManager.isEnglishLanguage?1.3:1,
      color: isDarkMode?black:white,
      ),
      subtitle1: TextStyle(
      fontSize: SizeConfig.h(14),
      height:localizationManager.isEnglishLanguage?1.3:1,
      color: isDarkMode?black:white,
      ),
      subtitle2: TextStyle(
      fontSize: SizeConfig.h(12),
      height:localizationManager.isEnglishLanguage?1.3:1,
      color: isDarkMode?black:white,
      ),

      //subtitle3
      headline6: TextStyle(
        fontSize: SizeConfig.h(12),
        height:localizationManager.isEnglishLanguage?1.3:1,
        color: isDarkMode?black:white,
      ),

      );


  final MaterialColor primaryColor = const MaterialColor(0xFF01244A, {
    05: Color(0xFFF6F9FC),
    50: Color(0xFF0EBCB2),
  });

  final MaterialColor black=const MaterialColor(0xFF171C34,{
    100:Color(0xFFE5E5E5),
    200:Color(0xFFCCCCCC),
    300:Color(0xFFACACAC),
    400:Color(0xFF999999),
    500:Color(0xFF828282),
    600:Color(0xFF666666),
    800:Color(0xFF333333),
    900:Color(0xFF171C34),
  });

  final Color white=const Color(0xFF01244A);

}
