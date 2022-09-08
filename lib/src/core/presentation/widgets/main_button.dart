import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/dependencies.dart';
import 'package:merit_driver/src/core/presentation/style.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {

  final String title;
  final double width;
  final void Function() onPressed;
  final bool enabled;


  const MainButton({Key? key,this.width=291,  required this.title, this.enabled=true,
    required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeManager themeManager=getIt<ThemeManager>();
    ThemeData theme=Theme.of(context);

    return GestureDetector(
      onTap:enabled?  onPressed:null,
      child: Container(
        width: SizeConfig.w(width),
        height: SizeConfig.h(66),
        decoration: BoxDecoration(
          color: enabled? themeManager.primaryColor:themeManager.black.shade300,
            boxShadow: [
        BoxShadow(
        color: Colors.grey.withOpacity(0.3),
        spreadRadius: 5,
        blurRadius: 7,
        offset: const Offset(0, 3), // changes position of shadow
      ),
          ],
          borderRadius: BorderRadius.circular(18),
        ),

        child: Center(
          child: Text(title.tr(),
            style:  theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
