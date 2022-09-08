import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/dependencies.dart';
import 'package:merit_driver/src/core/presentation/style.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/material.dart';

class NegativeButton extends StatelessWidget {

  final String title;
  final void Function() onPressed;
  final double width;

  const NegativeButton({Key? key, required this.title, required this.onPressed, this.width=291}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme =Theme.of(context);
    ThemeManager themeManager=getIt<ThemeManager>();
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: SizeConfig.w(width),
        height: SizeConfig.h(66),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: themeManager.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            border: Border.all(color: theme.errorColor)),
        child: Center(
          child: Text(
            title.tr(),
            style: theme.textTheme.bodyText2!.copyWith(
                color: theme.errorColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
