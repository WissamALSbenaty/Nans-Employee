import 'package:auto_route/auto_route.dart';
import 'package:merit_driver/dependencies.dart';
import 'package:merit_driver/src/core/presentation/assets.dart';
import 'package:merit_driver/src/core/presentation/page_arguments/custom_photo_viewer_page_arguments.dart';
import 'package:merit_driver/src/core/presentation/style.dart';
import 'package:merit_driver/src/core/presentation/widgets/close_widget.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomPhotoViewerPage extends StatelessWidget {

  final CustomPhotoViewerPageArguments args;

  const CustomPhotoViewerPage({Key? key, required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeManager themeManager =getIt<ThemeManager>();
    return Stack(
      fit:  StackFit.expand,
      children: [
        Container(
          color: themeManager.black,
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
                child:  CloseWidget(
                  color: themeManager.white,
                  height: 36
                ),
              )
        )
      ],
    );
  }
}
