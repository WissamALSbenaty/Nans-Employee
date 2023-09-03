import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/shimmers/custom_tile_shimmer.dart';
import 'package:flutter/material.dart';

class CustomListLoadingShimmer extends StatelessWidget {

  const CustomListLoadingShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppStyle.blue,
      child: Column(
        children: [

          const CustomSizedBox(height: 16,),
          ...List.generate(3, (index) => const Column(
        children:  [
          CustomTileShimmer(),
          CustomSizedBox(height: 16,),
        ],
      )).toList()
        ],
      ),
    );
  }
}
