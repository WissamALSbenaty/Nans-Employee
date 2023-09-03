


import 'package:nans/dependencies.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/util/localization_manager.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends AppBar{
  final String barTitle;
  final BuildContext context;
  final List<Widget> barActions;

  CustomAppBar({Key? key, required this.barTitle,required this.context,this.barActions=const []}):super(key: key,
  elevation: 0,
    backgroundColor: Colors.white,
    titleSpacing: 0,
  leading:appRouter.canPop()? getIt<LocalizationManager>().getHorizontalArrowIcon(
  height:24, onTap:()=> appRouter.canPop()? appRouter.pop():
                        appRouter.replace( const LoginRoute()),
  ):Container(),

  title: Text(
    barTitle.translateWord,style: AppStyle.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
  ),
    actions: [
      for(int i=0;i<barActions.length;i++)
        ...[
          barActions[i],
          const CustomSizedBox(width: 16,)
        ]
    ]
  );
}