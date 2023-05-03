import 'package:cached_network_image/cached_network_image.dart';
import 'package:etloob/src/core/presentation/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNetworkImage extends StatelessWidget {
  final String? imagePath;
  final double? width,height;
  final void Function()? onPressImage;
  final BoxFit? boxFit;
  final BorderRadius? radius;
const CustomNetworkImage({Key? key,required this.imagePath,
  this.onPressImage,this.boxFit,this.radius= const BorderRadius.all(Radius.circular(16)),
  this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onPressImage!,
      child: ClipRRect(
        borderRadius: radius,
          child: CachedNetworkImage(
            fit: boxFit,
            imageUrl: imagePath??'',
            errorWidget:(_,__,___)=> SvgPicture.asset(Assets.logo),
            placeholder:(_,__,)=> SvgPicture.asset(Assets.logo),

          height: height,width: width),
        ),
      );

  }
}
