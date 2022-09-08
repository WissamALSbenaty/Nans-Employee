
import 'package:merit_driver/dependencies.dart';
import 'package:merit_driver/src/core/util/localization_manager.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/material.dart';


class ThemeManager{
  static bool isDarkMode=true;

  ThemeManager();

  static void toggleIsDarkMode(){
    isDarkMode=!isDarkMode;
  }

  static ThemeData getTheme()=>ThemeData(
    fontFamily: "Poppins",
    textTheme: textTheme,
    scaffoldBackgroundColor: isDarkMode?darkModeColor :scaffoldLightColor ,
    primaryColorDark: darkModeColor,
    primaryColorLight: primaryColor,
    errorColor:errorColor,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: isDarkMode?black.shade100:black.shade400,
      selectionColor: isDarkMode?black.shade100:black.shade400,
      selectionHandleColor: isDarkMode?black.shade100:black.shade400,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,

      color:isDarkMode? darkModeAppBarColor:secondaryColor.shade600,
      titleTextStyle: textTheme.bodyText2!.copyWith(
          color: isDarkMode?null:ThemeManager.white,fontWeight: FontWeight.bold),
    )


  );

  static TextTheme textTheme =TextTheme(

      headline1: TextStyle(
      fontSize: SizeConfig.h(72),
      height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
      color: isDarkMode?white:black.shade600,
      ),
      headline2: TextStyle(
      fontSize: SizeConfig.h(64),
      height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
      color: isDarkMode?white:black.shade600,
      ),
      headline3: TextStyle(
      fontSize: SizeConfig.h(48),
      height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
      color: isDarkMode?white:black.shade600,
      ),
      headline4: TextStyle(
      fontSize: SizeConfig.h(36),
      height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
      color: isDarkMode?white:black.shade600,
      ),
      headline5: TextStyle(
        fontSize: SizeConfig.h(24),
        height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: isDarkMode?white:black.shade600,
      ),
      bodyText1: TextStyle(
      fontSize: SizeConfig.h(20),
      height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
      color: isDarkMode?white:black.shade600,
      ),
      bodyText2: TextStyle(
      fontSize: SizeConfig.h(16),
      height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
      color: isDarkMode?white:black.shade600,
      ),
      subtitle1: TextStyle(
      fontSize: SizeConfig.h(14),
      height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
      color: isDarkMode?white:black.shade600,
      ),
      subtitle2: TextStyle(
      fontSize: SizeConfig.h(12),
      height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
      color: isDarkMode?white:black.shade600,
      ),

      //subtitle3
      headline6: TextStyle(
        fontSize: SizeConfig.h(10),
        height:getIt<LocalizationManager>().isEnglishLanguage?1.3:1,
        color: isDarkMode?white:black.shade600,
      ),

      );



  static const MaterialColor black=MaterialColor(0xFF000000,{
    100:Color(0xFFE6E6E6),
    200:Color(0xFFCCCCCC),
    400:Color(0xFF999999),
    600:Color(0xFF666666),
    800:Color(0xFF333333),
    900:Color(0xFF000000),
  });

  static  const MaterialColor primaryColor=MaterialColor(0xFF213A5C,{
    200:Color(0xFF9FC4F8),
    500:Color(0xFF6391D0),
    700:Color(0xFF5474A1),
    900:Color(0xFF213A5C),
  });

  static const MaterialColor secondaryColor=MaterialColor(0xFF236ECF,{
    200:Color(0xFFACD0FF),
    400:Color(0xFF8BBDFF),
    600:Color(0xFF519CFE),
    800:Color(0xFF448DEB),
    900:Color(0xFF236ECF),
  });

  static const MaterialColor darkModeColor=MaterialColor(0xFF060E29,{
    200:Color(0xFF7681AD),
    400:Color(0xFF434E77),
    600:Color(0xFF202A4F),
    800:Color(0xFF111B40),
    900:Color(0xFF060E29),
  });

  static const Color white=Color(0xFFFFFFFF);
  static const Color green=Color(0xFF38DC29);
  static const Color red=Color(0xFFFF0000);
  static const Color errorColor=Color(0xFFFF6F6F);
  static const Color boxShadowColor=Color(0xFF0C51FF);
  static const Color darkModeAppBarColor=Color(0xFF0F1838);
  static const Color scaffoldLightColor=Color(0xFFF5F6FE);

  static const LinearGradient gradiant=LinearGradient(
    colors: [
      Color(0xFF0291FF),
      Color(0xFF0C51FF),
    ],
    begin:Alignment.centerLeft,
    end: Alignment.centerRight,
  );

}
