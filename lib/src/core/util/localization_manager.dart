

import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/src/core/presentation/assets.dart';
import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:injectable/injectable.dart';

@singleton
class LocalizationManager{
  bool isEnglishLanguage=true;

  void toggleLanguage(BuildContext context){
    EasyLocalization.of(context)!.setLocale(isEnglishLanguage? const Locale('ar') : const Locale('en'));
    isEnglishLanguage=!isEnglishLanguage;
  }

  Widget getHorizontalArrowIcon({required double height,bool isLeftInEnglish=true,
    required void Function()? onTap,required bool isDarkMode}){

    return GestureDetector(
      onTap: onTap,
      child: Center(child: isLeftInEnglish? SvgPicture.asset(
          isEnglishLanguage? Assets.leftArrow:Assets.rightArrow,height:SizeConfig.w(height),
        width: SizeConfig.w(height) ,color:isDarkMode?ThemeManager.white:ThemeManager.black.shade800,
      ): SvgPicture.asset(
          !isEnglishLanguage? Assets.leftArrow:Assets.rightArrow,height:SizeConfig.w(height),
          width: SizeConfig.w(height) , color:isDarkMode?ThemeManager.white:ThemeManager.black.shade800,
      ) ),
    );
  }



}