import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  final bool isSelected;
  const CustomRadioButton({Key? key, required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode =ThemeManager.isDarkMode;
    return Container(
      height: SizeConfig.h(24),
      width: SizeConfig.h(24),

      padding: EdgeInsets.all(SizeConfig.h(2)),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color:isDarkMode? ThemeManager.white:ThemeManager.primaryColor ,width: SizeConfig.w(2)),
        ),
        padding: EdgeInsets.all(SizeConfig.h(2)),

        child: Container(
          decoration: BoxDecoration(
            gradient: isSelected?ThemeManager.gradiant:null,
            shape: BoxShape.circle
          ),
        ),

      ),
    );
  }
}
