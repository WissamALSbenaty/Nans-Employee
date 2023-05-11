import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/shimmers/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTileShimmer extends StatelessWidget {
  const CustomTileShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 90.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
      ),
      child: Row(
        children: [
          CustomShimmer(height: 74.r, width: 74.r, radius: 16.r),
          const CustomSizedBox(width: 12,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomSizedBox(height: 16,),

                CustomShimmer(height: 8.h, width: 152.w, radius: 4.r),

                const CustomSizedBox(height: 16,),
                CustomShimmer(height: 8.h, width: 86.w, radius: 4.r),
                const CustomSizedBox(height: 16,),
                CustomShimmer(height: 8.h, width: 122.w, radius: 4.r)

              ],
            ),
          ),
          const CustomSizedBox(width: 16,),


        ],
      ),
    );

  }
}
