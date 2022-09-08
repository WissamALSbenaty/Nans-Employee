import 'package:merit_driver/src/core/presentation/widgets/custom_check_box.dart';
import 'package:merit_driver/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:flutter/material.dart';

class CustomCheckBoxTile extends StatelessWidget {
  final bool isSelected;
  final void Function() onPressed;
  final String title;
  const CustomCheckBoxTile({Key? key, required this.isSelected, required this.onPressed, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = ThemeManager.isDarkMode;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: isDarkMode? Border.all(color: ThemeManager.darkModeColor.shade400,):null,
            borderRadius: BorderRadius.circular(10),
          color: isDarkMode? ThemeManager.darkModeColor.shade600:ThemeManager.white,
        ),
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.w(8),vertical:  SizeConfig.h(16)),
          child: Row(
          children: [

            SizedBox(
              height: SizeConfig.w(24),
              width: SizeConfig.w(24),
              child:  CustomCheckBox(isSelected: isSelected,onPressed: onPressed),
            ),
            const CustomSizedBox(width: 16,),
            Text(title,style: ThemeManager.textTheme.bodyText2!.copyWith(
               color: isSelected? ThemeManager.secondaryColor.shade800:
                 isDarkMode? ThemeManager.white:ThemeManager.darkModeColor.shade800 ,
                fontWeight: FontWeight.w500),)

          ],
        ),

      ),
    );
  }
}
