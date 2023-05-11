import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/shimmers/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalCardsShimmer extends StatelessWidget {
  const HorizontalCardsShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      child: Row(

        children: [
          for(int i=0;i<3;i++)
            ...[
          CustomShimmer(
              height:100.r,
              width:100.r,
              radius: 16.r),
            const CustomSizedBox(width: 16,),
            ]
        ],
      ),
    );
  }
}
