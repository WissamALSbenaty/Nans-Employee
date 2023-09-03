
import 'package:nans/src/core/presentation/style.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmer extends StatelessWidget {
  final double height,width,radius;
  const CustomShimmer({Key? key, required this.height, required this.width, required this.radius,}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        highlightColor  : AppStyle.blue,
      baseColor : Colors.grey[200]!,
      period: const Duration(milliseconds: 800),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.grey[100]!,
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
