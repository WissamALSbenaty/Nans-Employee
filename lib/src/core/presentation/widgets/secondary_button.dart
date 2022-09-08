import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/dependencies.dart';
import 'package:merit_driver/src/core/presentation/style.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {

  final String title;
  final double width;
  final void Function() onPress;


  const SecondaryButton({Key? key,this.width=291 ,required this.title, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ThemeData theme =Theme.of(context);
    ThemeManager themeManager=getIt<ThemeManager>();

    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: SizeConfig.w(width),
        height: SizeConfig.h(66),
        decoration: BoxDecoration(
          color: themeManager.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: themeManager.primaryColor)
        ),

        child: Center(
          child: Text(title.tr(),
            style:  theme.textTheme.bodyText2!.copyWith(color: theme.primaryColor,fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
