import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/material.dart';

import '../theme_manager.dart';

class SheetHeader extends StatelessWidget {
  const SheetHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode=ThemeManager.isDarkMode;
    
    return Container(
      height: SizeConfig.h(40),
      color: isDarkMode? ThemeManager.darkModeColor.shade600:ThemeManager.white,
      child: Center(
        child: Container(
          height: SizeConfig.h(4),
          width: SizeConfig.w(60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(55),
            color: ThemeManager.black.shade200,
          ),
        ),
      ),
    );
  }
}
