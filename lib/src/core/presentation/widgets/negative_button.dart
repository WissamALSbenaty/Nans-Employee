import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NegativeButton extends StatelessWidget {

  final String title;
  final void Function() onPressed;
  final double width;

  const NegativeButton({Key? key, required this.title, required this.onPressed, this.width=291}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            elevation: MaterialStateProperty.all(5),
            backgroundColor:MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all( RoundedRectangleBorder(side: const BorderSide(
                color: AppStyle.errorColor
            ),
              borderRadius: BorderRadius.circular(8),))
        ),
        onPressed:onPressed,
        child: SizedBox(
            width: width.w,
            height: 66.h,

            child: Center(
                child: Text(title.translateWord,
                  style:  AppStyle.textTheme.bodyMedium!.copyWith(color: AppStyle.errorColor,fontWeight: FontWeight.bold),))));
  }
}
