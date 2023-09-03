import 'package:nans/dependencies.dart';
import 'package:nans/src/core/presentation/assets.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/util/localization_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeNavigationBar extends StatelessWidget {
  final void Function(int) onTabItem;
  final int currentIndex;


  HomeNavigationBar({super.key, required this.onTabItem, required this.currentIndex});

  final List<String> titles = ['Home','My Profile'],
      imagePath = [Assets.myOrders, Assets.profile,];

  @override
  Widget build(BuildContext context) {
    return Observer(
    builder: (_) =>SizedBox(
      key: ValueKey( getIt<LocalizationManager>().isEnglishLanguage),
      height: 84.h,
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabItem,
        backgroundColor: Colors.white,
        selectedItemColor: AppStyle.primary,
        unselectedLabelStyle: AppStyle.textTheme.titleMedium!.copyWith(fontSize:10.h, color: AppStyle.blackColor.shade500,),
        selectedLabelStyle: AppStyle.textTheme.titleMedium!.copyWith(fontSize:10.h, color: AppStyle.primary,),
        type: BottomNavigationBarType.fixed,

        items: [
          for (int i = 0; i < titles.length; i++)
            buildNavigationBarItem(i, i == currentIndex,context),
        ],
      ),
    ));
  }

  BottomNavigationBarItem buildNavigationBarItem(
      int  titleIndex, bool isSelected,BuildContext context) {
    return BottomNavigationBarItem(

      icon: titleIndex!=2?  Padding(
        padding:  EdgeInsets.all(8.r),
        child: SvgPicture.asset(
          imagePath[titleIndex],
          height: 24.r,
          width: 24.r,
          colorFilter:ColorFilter.mode( isSelected ? AppStyle.primary : AppStyle.blackColor.shade200,BlendMode.srcIn),
        ),
      ):Image.asset(Assets.homePageBox,
        height: 48.r,width: 48.r,),

      label:  titles[titleIndex].translateWord,

    );
  }
}
