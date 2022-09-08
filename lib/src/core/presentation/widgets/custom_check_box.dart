import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  final bool isSelected;
  final void Function() onPressed;
  const CustomCheckBox({Key? key, required this.isSelected, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = ThemeManager.isDarkMode;

    return SizedBox.fromSize(
      size: Size(SizeConfig.h(24),SizeConfig.h(24),),
      child: Checkbox(value: isSelected,
          fillColor: MaterialStateProperty.all(ThemeManager.secondaryColor.shade800),
          checkColor: isDarkMode? ThemeManager.darkModeColor:ThemeManager.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          onChanged:(_)=>onPressed() ),
    );
  }
}
