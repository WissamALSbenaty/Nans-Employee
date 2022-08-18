import 'package:easy_localization/easy_localization.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/util/size_config.dart';
import 'package:flutter/material.dart';

class NegativeButton extends StatelessWidget {

  final String title;
  final void Function() onPressed;
  final double width;

  const NegativeButton({Key? key, required this.title, required this.onPressed, this.width=291}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: SizeConfig.w(width),
        height: SizeConfig.h(66),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: AppColors.whiteColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            border: Border.all(color: AppColors.darkPink)),
        child: Center(
          child: Text(
            title.tr(),
            style: AppStyle.textTheme.bodyText2!.copyWith(
                color: AppColors.darkPink, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
