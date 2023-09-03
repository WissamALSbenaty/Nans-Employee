import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_network_image.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_sized_box.dart';

abstract class CustomTile extends StatelessWidget {

  final void Function() onTilePressed;
  final Widget? trailing;
  final Widget imageWidget;
  final String title,titleMedium;
  final String? titleSmall;
  final bool needToCrossNearTile;


  const CustomTile({Key? key,
    required this.onTilePressed,
    this.trailing,
    this.titleSmall,
    required this.imageWidget,
    required this.title,
    required this.titleMedium, this.needToCrossNearTile=true,

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: onTilePressed,
      style: AppStyle.buttonsStyle,
      child: Container(

        height: 92.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
        ),
        padding: EdgeInsets.all( 8.r),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: SizedBox(
                    height: 74.r,
                    width: 74.r,
                    child: imageWidget
                )
            ) ,

            const CustomSizedBox(width: 12,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(title.translateWord,
                    style: AppStyle.textTheme.bodySmall!.copyWith( fontWeight: FontWeight.bold,),
                  ),

                  Text(titleMedium,overflow: TextOverflow.ellipsis ,maxLines: 1, style: AppStyle.textTheme.titleLarge!.copyWith( color: AppStyle.blackColor.shade500),),

                  if(titleSmall!=null)
                    ...[
                      Text(titleSmall!,overflow: TextOverflow.ellipsis ,maxLines: 1, style: AppStyle.textTheme.titleLarge!.copyWith( color: AppStyle.blackColor.shade500),)
                    ]
                ],
              ),
            ),
            const CustomSizedBox(width: 4,),
            //const Spacer(),
            if(trailing!=null)
              trailing!,

          ],
        ),
      ),
    );
  }
}
class OfflineCustomTile extends CustomTile{

  OfflineCustomTile({super.key, required super.onTilePressed,
    super.trailing,required String imagePath, required super.title,required super.titleMedium,super.titleSmall,}):
        super(imageWidget:   Image.asset(imagePath),);
}

class OnlineCustomTile extends CustomTile{

  OnlineCustomTile({super.key, required super.onTilePressed,
    super.trailing,required String? imagePath, required super.title,required super.titleMedium,
    super.titleSmall,super.needToCrossNearTile=false}):
        super(imageWidget:CustomNetworkImage(imagePath: imagePath,)
      );
}
