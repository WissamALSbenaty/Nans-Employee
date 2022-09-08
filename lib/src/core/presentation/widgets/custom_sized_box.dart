import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/material.dart';

class CustomSizedBox extends StatelessWidget {

  final double? height,width;


  const CustomSizedBox({Key? key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height==null?null: SizeConfig.h(height!),
      width: width==null?null: SizeConfig.w(width!),

    );
  }
}
