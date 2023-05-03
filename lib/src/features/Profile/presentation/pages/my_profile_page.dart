import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/Data/Errors/core_errors.dart';
import 'package:etloob/src/Data/models/user_profile_model.dart';
import 'package:etloob/src/core/controllers/app_controller.dart';
import 'package:etloob/src/core/presentation/assets.dart';
import 'package:etloob/src/core/presentation/auto_router.dart';
import 'package:etloob/src/core/presentation/sheets/custom_bottomsheet.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/base_data_loader.dart';
import 'package:etloob/src/core/presentation/widgets/custom_empty_view.dart';
import 'package:etloob/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:etloob/src/core/util/mixins.dart';
import 'package:etloob/src/features/Profile/presentation/sheets_and_popups/language_bottom_sheet.dart';
import 'package:etloob/src/features/Profile/presentation/widgets/profile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
@RoutePage()
class MyProfilePage extends StatelessWidget with WidgetStoreCreatorMixin<AppController> {
   MyProfilePage({Key? key}) : super(key: key);

  final List<String> titles=['Notifications','Settings',];

  final List<String> iconPaths=[Assets.bell,Assets.settings,];

  final List<Color> avatarColors=[AppColors.lightYellow,AppColors.blackColor.shade100,];

  final List<PageRouteInfo> nextPages=[ const NotificationsRoute(), SettingsRoute(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.whiteColor,
        titleSpacing: 24.w,
        title: Text(
          'My Profile'.translateWord,style: AppStyle.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
        ),

        actions: [
          GestureDetector(
            onTap:()=>showCustomBottomSheet(context,   LanguageBottomSheet(),[0.5]),
            child: Center(
              child: Text(
                'Change Language'.translateWord,style: AppStyle.textTheme.bodyMedium!.copyWith(color: AppColors.secondaryYellow, fontWeight: FontWeight.bold),
              ),
            ),
          ),
            const CustomSizedBox(width: 16,),
        ]
      ),
      backgroundColor: AppColors.blue,

      body:BaseDataLoader<UserProfileModel?>(
        dataLoader: createdStore,
        onFailLoading: createdStore.loadData,
        dataGetter: ()=>createdStore.userProfileModel,
        childBuilder: (data)=>data==null?
        CustomEmptyView(NotAuthorizedError(message: null)):
          Column(
            children: [
              SizedBox(
                  width:375.w,
                  height:150.h,
                  child:  ProfileCard(
                    firstName:data.firstName,
                    lastName:data.lastName,
                    referralCode:data.referralCode??"",
                    phoneNumber: data.phoneNumber,

                  )
              ),
              Expanded(
                child: SingleChildScrollView(
        child: Column(
                children: const [

          /*      const CustomSizedBox(height: 16,),
                  for(int i=0;i<titles.length;i++)
                    ...[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:  16.w,),
                        child: RouteOptionCard(
                          onPressed: ()=>AutoRouter.of(context).push(nextPages[i]),
                            title:titles[i],iconPath:iconPaths[i],iconColor:avatarColors[i]),
                      ),
                      const CustomSizedBox(height: 16,),
                    ]*/
                ],
        ),
      ),
              ),
            ],
          ),
    ));
  }
}
