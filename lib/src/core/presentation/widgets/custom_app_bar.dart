import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/dependencies.dart';
import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:merit_driver/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:merit_driver/src/core/util/localization_manager.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends AppBar{
  final String barTitle;
  final BuildContext context;
  final List<Widget> barActions;

  CustomAppBar({Key? key, required this.barTitle,required this.context,this.barActions=const []}):super(key: key,
      elevation: 0,
      titleSpacing: 0,
      shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(8),
      )),
      leading:getIt<LocalizationManager>().getHorizontalArrowIcon(
        height:24, onTap:()=> AutoRouter.of(context).pop(),isDarkMode: ThemeManager.isDarkMode,
      ),

      title: Text(
        barTitle.tr(),
      ),
      actions: [
        for(int i=0;i<barActions.length;i++)
          ...[
            barActions[i],
            const CustomSizedBox(width: 16,),
          ]
      ]
  );
}