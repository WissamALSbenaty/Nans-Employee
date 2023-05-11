import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/close_widget.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/main_button.dart';
import 'package:nans/src/core/presentation/widgets/secondary_button.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CustomImageDialog extends StatelessWidget {
  final String imagePath,mainActionTitle, content;
  final String? secondActionTitle,subtitle;

  final void Function() onMainActionPressed;
  final void Function()? onSecondActionPressed,onCloseButtonPressed;


  const CustomImageDialog({Key? key, required this.imagePath,required this.mainActionTitle,
    required this.content, required this.onMainActionPressed,
    this.onSecondActionPressed,this.secondActionTitle,this.subtitle, this.onCloseButtonPressed,
  }): assert(
    !((onSecondActionPressed==null && secondActionTitle!=null) || (onSecondActionPressed!=null && secondActionTitle==null))
  ),super(key: key);


  @override
  Widget build(BuildContext context) {
   return  AlertDialog(
     titlePadding: EdgeInsets.symmetric(vertical: 16.r),
     contentPadding: EdgeInsets.all( 16.r),
     actionsPadding: EdgeInsets.all( 16.r),

     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(15),
     ),
      backgroundColor: Colors.white,

      title: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [

          Row(
            children:  [
              const Spacer(),
              CloseWidget(onPressed: onCloseButtonPressed,height:36 ),
              const CustomSizedBox(width: 16,),
            ],
          ),
          const CustomSizedBox(height: 8,),
          SvgPicture.asset(imagePath),
        ],
      ),
      content:  Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            content.translateWord,style: AppStyle.textTheme.headlineMedium,textAlign: TextAlign.center,
          ),
          if(subtitle!=null)
            ...[
          const CustomSizedBox(height: 8,),
              Text(
                subtitle!.translateWord,style: AppStyle.textTheme.titleMedium,textAlign: TextAlign.center,
              ),
          ]
        ],
      ),


     actions: [
       Column(
         mainAxisSize: MainAxisSize.min,
         children: [
           MainButton(
             isLoading: false,
               title: mainActionTitle,
               onPressed: onMainActionPressed
           ),
           if(secondActionTitle!=null)
             ...[
               const CustomSizedBox(height: 8,),
               SecondaryButton(title: secondActionTitle!,
                 onPress: onSecondActionPressed!,
               )]
         ],
       ),



      ],

    );

  }
}
