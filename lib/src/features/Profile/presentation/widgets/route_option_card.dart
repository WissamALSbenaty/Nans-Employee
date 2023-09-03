
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nans/dependencies.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/util/localization_manager.dart';

class RouteOptionCard extends StatelessWidget {

  final String title,iconPath;
  final Color iconColor;
  final void Function() onPressed;


   const RouteOptionCard({Key? key, required this.onPressed, required this.title, required this.iconPath, required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        height: 64.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius:16.w,
              backgroundColor: iconColor,
              child: SvgPicture.asset(iconPath),
            ),
            const CustomSizedBox(width: 16,),
            Text(title.translateWord,style: AppStyle.textTheme.titleMedium!.copyWith(color: AppStyle.blackColor.shade600, fontWeight: FontWeight.bold),),
            const Spacer(),
            getIt<LocalizationManager>().getHorizontalArrowIcon(
              isLeftInEnglish: false, height:24, onTap: null,
            ),

          ],
        ),
      ),
    );
  }
}
