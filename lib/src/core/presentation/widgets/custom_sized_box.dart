
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSizedBox extends StatelessWidget {

  final double? height,width;


  const CustomSizedBox({Key? key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height==null?null: height!.h,
      width: width==null?null: width!.w,

    );
  }
}
