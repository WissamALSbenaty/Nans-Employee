import 'package:auto_route/auto_route.dart';
import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/Data/Errors/custom_error.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/main_button.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomEmptyView extends StatelessWidget {

  final CustomError error;
  final void Function()? onHelperButtonPressed;


  const CustomEmptyView(this.error,{this.onHelperButtonPressed,Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(error.imagePath),
          const CustomSizedBox(height: 16,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(error.errorMessage.translateWord,
              textAlign: TextAlign.center,
              style: AppStyle.textTheme.bodyMedium!.copyWith(color: AppColors.blackColor.shade600)
            ),
          ),
          const CustomSizedBox(height: 16,),

          getHelperButton(context),

          //const Spacer(),
        ],
      ),
    );
  }

  Widget getHelperButton(BuildContext context){
    if(error is InternetConnectionError) {
      return MainButton(
              isLoading: false,
        title: 'Retry',onPressed: onHelperButtonPressed!,);
    } else if(error is NotAuthorizedError) {
      return MainButton(
        isLoading: false,
        title: 'Login/Register', onPressed: () => AutoRouter.of(context).replace(LoginRoute()),);
    }

    return Container();
  }
}
