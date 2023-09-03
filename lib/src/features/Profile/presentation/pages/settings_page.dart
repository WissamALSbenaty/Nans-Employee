
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/src/core/presentation/assets.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/features/Profile/presentation/sheets_and_popups/logout_dialog.dart';
import 'package:flutter/material.dart';
import 'package:nans/src/features/Profile/presentation/widgets/route_option_card.dart';

class SettingsOptionItem{
  final String title;
  final String iconPath;
  final void Function() onPressed;

  SettingsOptionItem({required this.title, required this.iconPath, required this.onPressed});
}
@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

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
                    .copyWith(color: AppStyle.primary, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]),

        body: Padding(
                padding: EdgeInsets.all(16.r,),
                child:  Column(
                  children: [

                      RouteOptionCard(
                          onPressed: ()=>AutoRouter.of(context).push(  EditAccountRoute()),
                          title:'Edit My Account',
                          iconPath:Assets.user,
                          iconColor: AppStyle.blackColor.shade100),
                      const CustomSizedBox(height: 16,),
                    const CustomSizedBox(height: 32,),
                    ],
                ),
                ),
            );
  }
}
