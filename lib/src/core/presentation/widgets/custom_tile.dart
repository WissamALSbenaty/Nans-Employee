import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_network_image.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      child: Stack(
        children: [
          Container(

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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomSizedBox(height: 8,),

                      Text(title.translateWord,
                            style: AppStyle.textTheme.titleSmall!.copyWith( fontWeight: FontWeight.bold,),
                      ),

                      const CustomSizedBox(height: 2,),
                      Text(titleMedium,overflow: TextOverflow.ellipsis ,maxLines: 1, style: AppStyle.textTheme.titleSmall!.copyWith( color: AppColors.blackColor.shade500),),

                      if(titleSmall!=null)
                        ...[
                          const CustomSizedBox(height: 2,),
                          Text(titleSmall!,overflow: TextOverflow.ellipsis ,maxLines: 1, style: AppStyle.textTheme.titleSmall!.copyWith( color: AppColors.blackColor.shade500),)
                        ]
                    ],
                  ),
                ),
                const CustomSizedBox(width: 16,),
                //const Spacer(),
                if(trailing!=null)
                  trailing!,

              ],
            ),
          ),
        ],
      ),
    );
  }
}
class OfflineCustomTile extends CustomTile{

  OfflineCustomTile({super.key, required super.onTilePressed,
   super.trailing,required String imagePath, required super.title,required super.titleMedium,super.titleSmall,}):
        super(imageWidget:   SvgPicture.asset(imagePath),);
}

class OnlineCustomTile extends CustomTile{

  OnlineCustomTile({super.key, required super.onTilePressed,
   super.trailing,required String imagePath, required super.title,required super.titleMedium,
    super.titleSmall,super.needToCrossNearTile=false}):
        super(imageWidget:CustomNetworkImage(imagePath: imagePath,)
  );
}
