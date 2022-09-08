import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/material.dart';

class NegativeButton extends StatelessWidget {

  final String title;
  final void Function() onPressed;
  final double width;

  const NegativeButton({Key? key, required this.title, required this.onPressed, this.width=343}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme theme=ThemeManager.textTheme;
    bool isDarkMode=ThemeManager.isDarkMode;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: SizeConfig.w(width),
        height: SizeConfig.h(54),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: ThemeManager.errorColor,
        ),
        child: Center(
          child: Text(
            title.tr(),
            style:theme.bodyText2!.copyWith(
                color: isDarkMode?null:ThemeManager.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
