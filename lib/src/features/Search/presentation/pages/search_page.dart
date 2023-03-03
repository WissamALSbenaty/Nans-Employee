import 'package:auto_route/auto_route.dart';
import 'package:etloob/dependencies.dart';
import 'package:etloob/src/core/controllers/search_controller.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:etloob/src/core/presentation/widgets/custom_tab_bar.dart';
import 'package:etloob/src/core/presentation/widgets/text_fields/search_text_field.dart';
import 'package:etloob/src/core/util/localization_manager.dart';
import 'package:etloob/src/core/util/mixins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPage extends StatelessWidget with WidgetStoreCreatorMixin<SearchController> {
    SearchPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
      return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.blue,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CustomSizedBox(height: 24,),
            Container(
              color: AppColors.whiteColor,
              padding: EdgeInsets.symmetric(
                  horizontal: 16.w, vertical: 8.h),
              child: Column(
                children: [
                  const CustomSizedBox(height: 24,),

                  Row(
                    children: [

                      getIt<LocalizationManager>().getHorizontalArrowIcon(
                        height: 24, onTap:  AutoRouter.of(context).pop,
                      ),

                      const CustomSizedBox(width: 8,),

                      Expanded(child: SearchTextField(searchController: createdStore,)),
                      const CustomSizedBox(width: 8,),
                    ],
                  )
                ],
              ),
            ),

        Container(height: 16.h,color: AppColors.whiteColor,),

        const CustomTabBar(titles:['Products', 'Daily Shopping', 'Brands', 'Vendors'],),
       /*  Expanded(

                child:TabBarView(
                children:    [

                ],
            ),
            ),
*/          ],

        ),

    ));
  }

}