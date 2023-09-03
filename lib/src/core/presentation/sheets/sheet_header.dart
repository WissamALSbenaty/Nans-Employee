
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style.dart';

class SheetHeader extends StatelessWidget {
  const SheetHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      color: Colors.white,
      child: Center(
        child: Container(
          height: 4.h,
          width: 60.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(55),
            color: AppStyle.blackColor.shade100,
          ),
        ),
      ),
    );
  }
}
