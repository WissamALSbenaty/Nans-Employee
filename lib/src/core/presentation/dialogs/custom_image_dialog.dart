
import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:merit_driver/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:merit_driver/src/core/presentation/widgets/main_button.dart';
import 'package:merit_driver/src/core/presentation/widgets/secondary_button.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImageDialog extends StatelessWidget {
  final String imagePath,mainActionTitle, content;
  final String? secondActionTitle,subtitle;

  final void Function() onMainActionPressed;
  final void Function()? onSecondActionPressed;


  const CustomImageDialog({Key? key, required this.imagePath,required this.mainActionTitle,
    required this.content, required this.onMainActionPressed,
    this.onSecondActionPressed,this.secondActionTitle,this.subtitle,
  }):super(key: key);


  @override
  Widget build(BuildContext context) {
    TextTheme theme=ThemeManager.textTheme;
    bool isDarkMode = ThemeManager.isDarkMode;

    return  AlertDialog(
     backgroundColor: isDarkMode? ThemeManager.darkModeColor.shade600:ThemeManager.white,
     actionsPadding: EdgeInsets.all(SizeConfig.h(16)),
     contentPadding: EdgeInsets.all(SizeConfig.h(32)),
     shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(16)),

     title: SvgPicture.asset(imagePath,height: SizeConfig.h(132),width: SizeConfig.h(132)),
     content: Column(
       mainAxisSize: MainAxisSize.min,
       children: [
         Text(content.tr(),textAlign: TextAlign.center,style:theme.bodyText1!.copyWith(
             color: isDarkMode?null:ThemeManager.primaryColor,
             fontWeight: FontWeight.bold) ,),
         if(subtitle!=null)
         ...[
           const CustomSizedBox(height: 8,),
           Text(subtitle!.tr(),textAlign: TextAlign.center,style:theme.subtitle1!.copyWith(
             color: isDarkMode?null:ThemeManager.primaryColor.shade700,
           )),
         ]
       ],
     ),

     actions: [
       MainButton(title: mainActionTitle, onPressed:onMainActionPressed,height: 64),

       if(secondActionTitle!=null)
        ... [
           const CustomSizedBox(height: 16  ,),
           SecondaryButton(title: mainActionTitle, onPressed:onMainActionPressed,height: 64),

        ]
     ],

   );

  }
}
