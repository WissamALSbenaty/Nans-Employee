import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {

  final String title;
  final double width,height;
  final void Function() onPressed;


  const SecondaryButton({Key? key,this.width=343 ,this.height=54,required this.title, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextTheme theme=ThemeManager.textTheme;


    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: SizeConfig.w(width),
        height: SizeConfig.h(height),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
        color: ThemeManager.secondaryColor.shade200,
        ),

        child: Center(
          child: Text(title.tr(),
            style: theme.bodyText2!.copyWith(fontWeight: FontWeight.w500,color:ThemeManager.secondaryColor.shade800),),
        ),
      ),
    );
  }
}
