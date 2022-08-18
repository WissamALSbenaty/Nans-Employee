


import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:etloob/dependencies.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:etloob/src/core/util/localization_manager.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends AppBar{
  final String barTitle;
  final BuildContext context;
  final List<Widget> barActions;

  CustomAppBar({Key? key, required this.barTitle,required this.context,this.barActions=const []}):super(key: key,
  elevation: 0,
    backgroundColor: Colors.white,
    titleSpacing: 0,
  leading:getIt<LocalizationManager>().getHorizontalArrowIcon(
  height:24, onTap:()=> AutoRouter.of(context).pop(),
  ),

  title: Text(
    barTitle.tr(),style: AppStyle.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),
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