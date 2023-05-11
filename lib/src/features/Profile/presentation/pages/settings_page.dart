// ignore_for_file: deprecated_member_use
import 'package:auto_route/auto_route.dart';
import 'package:nans/src/Data/models/social_media_model.dart';
import 'package:nans/src/core/presentation/widgets/base_data_loader.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:nans/src/features/Profile/controllers/social_media_controller.dart';
import 'package:nans/src/features/Profile/presentation/sheets_and_popups/logout_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsOptionItem{
  final String title;
  final String iconPath;
  final void Function() onPressed;

  SettingsOptionItem({required this.title, required this.iconPath, required this.onPressed});
}
@RoutePage()
class SettingsPage extends StatelessWidget with WidgetStoreCreatorMixin<SocialMediaController> {
  SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(context: context, barTitle: 'Settings', barActions: [
          GestureDetector(
            onTap: () => showDialog(context: context, builder: (ctx) =>  LogoutDialog()),
            child: Center(
              child: Text(
                'Logout'.translateWord,
                style: AppStyle.textTheme.bodyMedium!
                    .copyWith(color: AppColors.yellow, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]),

        body: BaseDataLoader<SocialMediaModel>(
            dataLoader: createdStore,
            dataGetter: () => createdStore.data!,
            onFailLoading: createdStore.loadData,
            childBuilder: (data) {


              return SingleChildScrollView(
                padding: EdgeInsets.all(16.r,),
                child: Column(
                  children: const [
                   /* for (SettingsOptionItem item in settingsItems) ...[
                      RouteOptionCard(
                          onPressed:item.onPressed,
                          title:item.title,
                          iconPath:item.iconPath,
                          iconColor: AppColors.blackColor.shade100),
                      const CustomSizedBox(height: 16,),
                    ],
                    const CustomSizedBox(height: 32,),*/
                  ],
                ),
              );
            }));
  }
}
