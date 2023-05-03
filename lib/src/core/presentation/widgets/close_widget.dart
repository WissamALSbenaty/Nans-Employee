import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/core/presentation/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CloseWidget extends StatelessWidget {

  final double height;
  final void Function()? onPressed;

  const CloseWidget({Key? key, this.height=24,  this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed?? ()=>AutoRouter.of(context).pop(),
        child: SvgPicture.asset(
          Assets.close,
          height: height.r,
          width: height.r,)
    );
  }
}
