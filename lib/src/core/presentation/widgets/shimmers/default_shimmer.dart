import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/shimmers/custom_list_loading_shimmer.dart';
import 'package:nans/src/core/presentation/widgets/shimmers/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultShimmer extends StatelessWidget {
  const DefaultShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.blue,
      body: SingleChildScrollView(
      padding: EdgeInsets.all( 32.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(16.r)
                ),
                child: CustomShimmer(height: 300.h, width: 312.w, radius: 16.r)),
            const CustomSizedBox(height: 32,),
            CustomShimmer(height: 8.h, width: 176.w, radius: 4.r),
            const CustomSizedBox(height: 16,),
            CustomShimmer(height: 8.h, width: 88.w, radius: 4.r),
            const CustomSizedBox(height: 16,),
            const CustomListLoadingShimmer(),
          ],
        ),
      ),
    );
  }
}
