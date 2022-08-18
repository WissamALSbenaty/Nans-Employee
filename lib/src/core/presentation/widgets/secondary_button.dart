import 'package:easy_localization/easy_localization.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/util/size_config.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {

  final String title;
  final double width;
  final void Function() onPress;


  const SecondaryButton({Key? key,this.width=291 ,required this.title, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: SizeConfig.w(width),
        height: SizeConfig.h(66),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: AppColors.yellow)
        ),

        child: Center(
          child: Text(title.tr(),
            style:  AppStyle.textTheme.bodyText2!.copyWith(color: AppColors.yellow,fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
