import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/shimmers/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerticalCardsShimmer extends StatelessWidget {
  const VerticalCardsShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(

        children: [
          for(int i=0;i<4;i++)
            ...[
              CustomShimmer(
                  height:100.r,
                  width:100.r,
                  radius: 16.r),
              const CustomSizedBox(height: 16,),
            ]
        ],
      ),
    );
  }
}
