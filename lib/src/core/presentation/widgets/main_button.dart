import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {

  final String title;
  final double width,height;
  final void Function() onPressed;
  final bool enabled;


  const MainButton({Key? key,this.width=343,this.height=54,  required this.title, this.enabled=true,
    required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme theme=ThemeManager.textTheme;
    bool isDarkMode=ThemeManager.isDarkMode;


    return GestureDetector(
      onTap:enabled?  onPressed:null,
      child: Container(
        width: SizeConfig.w(width),
        height: SizeConfig.h(height),
        decoration: BoxDecoration(
          gradient: ThemeManager.gradiant,

          color: enabled? ThemeManager.primaryColor:ThemeManager.black.shade400,
            boxShadow: const [
        BoxShadow(
          color: ThemeManager.boxShadowColor,
          blurRadius:  10,// changes position of shadow
      ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),

        child: Center(
          child: Text(title.tr(),
            style: theme.bodyText2!.copyWith( fontWeight: FontWeight.bold,
            color: isDarkMode?null:ThemeManager.white,
            ),),
        ),
      ),
    );
  }
}
