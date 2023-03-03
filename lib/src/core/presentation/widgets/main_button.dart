import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {

  final String title;
  final double width;
  final void Function() onPressed;
  final bool isLoading;


  const MainButton({Key? key,this.width=291,  required this.title,required this.isLoading,
    required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:!isLoading?  (){
        FocusManager.instance.primaryFocus?.unfocus();
        onPressed();
      }:null,
      child: Container(
        width: width.w,
        height: 66.h,
        decoration: BoxDecoration(
          color: AppColors.yellow,
            boxShadow: AppStyle.basicBoxShadow,
          borderRadius: BorderRadius.circular(18),
        ),

        child: Center(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: isLoading? const CircularProgressIndicator(color: AppColors.whiteColor,):
            Text(title.translateWord,
              style:  AppStyle.textTheme.bodyText2!.copyWith(color: AppColors.whiteColor,fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
