import 'package:nans/src/core/presentation/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPagesIndicator extends StatelessWidget {

  final int selectedPage,totalPages;

  const CustomPagesIndicator({Key? key, required this.selectedPage, required this.totalPages}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return totalPages>=20? Container():  AnimatedSmoothIndicator(
      activeIndex: selectedPage,
      count: totalPages,
      effect: ExpandingDotsEffect(
        dotHeight: 4.h,
        dotWidth: 8.w,
        dotColor: AppStyle.blackColor.shade100,
        activeDotColor: AppStyle.primary,
      ),
    );
  }
}
