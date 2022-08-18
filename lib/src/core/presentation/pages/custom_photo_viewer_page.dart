import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/core/presentation/assets.dart';
import 'package:etloob/src/core/presentation/page_arguments/custom_photo_viewer_page_arguments.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/close_widget.dart';
import 'package:etloob/src/core/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomPhotoViewerPage extends StatelessWidget {

  final CustomPhotoViewerPageArguments args;

  const CustomPhotoViewerPage({Key? key, required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit:  StackFit.expand,
      children: [
        Container(
          color: AppColors.blackColor,
            ///heroAttributes:PhotoViewHeroAttributes(tag: args.imageTag.toString()),
          child: Center(child: Image.network(args.imagePath,
          errorBuilder: (_,__,___)=>SvgPicture.asset(Assets.logo),
          )),
        ),

        Positioned(
          height: SizeConfig.h(200),
          right: SizeConfig.w(24),

          child: GestureDetector(
                onTap: ()=>AutoRouter.of(context).pop(),
                child: const CloseWidget(
                  color: AppColors.whiteColor,
                  height: 36
                ),
              )
        )
      ],
    );
  }
}
