import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/core/controllers/app_controller.dart';
import 'package:etloob/src/core/presentation/assets.dart';
import 'package:etloob/src/core/presentation/auto_router.gr.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:etloob/src/core/presentation/widgets/main_button.dart';
import 'package:etloob/src/core/presentation/widgets/secondary_button.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:etloob/src/core/util/mixins.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartAuthWidget extends StatelessWidget with WidgetStoreCreatorMixin<AppController> {
  final String title;
   StartAuthWidget({Key? key,required this.title}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      )),
      child: Column(
        children: [
          const CustomSizedBox(
            height: 16,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 108.w),
              child: SvgPicture.asset(
                Assets.logo,
              )),
          const CustomSizedBox(
            height: 32,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              title.translateWord,
              textAlign: TextAlign.center,
              style: AppStyle.textTheme.bodyText2!
                  .copyWith(color: AppColors.blackColor.shade500),
            ),
          ),
          const CustomSizedBox(
            height: 32,
          ),

              const CustomSizedBox(
              height: 32,
              ),
              SecondaryButton(
              title: "Login".translateWord,
              onPress: ()=>AutoRouter.of(context).push( LoginPageRoute()),
              ),
              const CustomSizedBox(
              height: 32,
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(
              'Visiting Us For The First Time?'.translateWord,
              style: AppStyle.textTheme.bodyText2,
              ),
              const CustomSizedBox(
              width: 2,
              ),
              GestureDetector(
              onTap: ()=>AutoRouter.of(context).push(const SignUpPageRoute()),
                child: Text(
                  'Create Account'.translateWord,
                  style: AppStyle.textTheme.bodyText2!.copyWith(
                      color: AppColors.secondaryYellow, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const CustomSizedBox(
            height: 128,
          ),
        ],
      ),
    );
  }
}
