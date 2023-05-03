import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryButton extends StatelessWidget {

  final String title;
  final double width;
  final void Function() onPress;


  const SecondaryButton({Key? key,this.width=291 ,required this.title, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(

        style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            elevation: MaterialStateProperty.all(5),
            backgroundColor:MaterialStateProperty.all(AppColors.whiteColor),
            shape: MaterialStateProperty.all( RoundedRectangleBorder(side: const BorderSide(
              color: AppColors.yellow
            ),
              borderRadius: BorderRadius.circular(8),))
        ),
        onPressed:onPress,
        child: SizedBox(
            width: width.w,
            height: 66.h,

            child: Center(
                child: Text(title.translateWord,
                  style:  AppStyle.textTheme.bodyMedium!.copyWith(color: AppColors.yellow,fontWeight: FontWeight.bold),))));
  }
}
