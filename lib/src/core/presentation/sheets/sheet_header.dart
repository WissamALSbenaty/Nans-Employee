import 'package:etloob/src/core/util/size_config.dart';
import 'package:flutter/material.dart';

import '../style.dart';

class SheetHeader extends StatelessWidget {
  const SheetHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.h(40),
      color: AppColors.whiteColor,
      child: Center(
        child: Container(
          height: SizeConfig.h(4),
          width: SizeConfig.w(60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(55),
            color: AppColors.blackColor.shade100,
          ),
        ),
      ),
    );
  }
}
