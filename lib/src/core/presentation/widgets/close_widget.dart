import 'package:auto_route/auto_route.dart';
import 'package:merit_driver/src/core/presentation/assets.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CloseWidget extends StatelessWidget {

  final double height;
  final Color? color;
  final void Function()? onPressed;

  const CloseWidget({Key? key, this.height=24, this.color, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed?? ()=>AutoRouter.of(context).pop(),
        child: SvgPicture.asset(
          Assets.close,
          color: color,
          height: SizeConfig.h(height),
          width: SizeConfig.h(height),)
    );
  }
}
