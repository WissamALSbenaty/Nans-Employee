import 'package:etloob/src/core/presentation/assets.dart';
import 'package:etloob/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:etloob/src/core/presentation/snakebars/snack_bar_messages.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileCard extends StatelessWidget {
  final String firstName,lastName,referralCode, phoneNumber;
  const ProfileCard({Key? key,required this.referralCode,required this.lastName,required this.firstName,required this.phoneNumber}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      color: AppColors.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 37.r,
                backgroundColor: AppColors.lightYellow,
                child:Center(
                  child: Text(
                    '${firstName.split('')[0]}${lastName.split('')[0]}',style: AppStyle.textTheme.displayMedium!.copyWith(color: AppColors.yellow,fontWeight: FontWeight.bold),
                  ),
                )
                ,),
              const CustomSizedBox(width: 16,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$firstName $lastName',style: AppStyle.textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),),
                  //CustomSizedBox(height:4 ,),
                GestureDetector(
                  onTap: (){
                    Clipboard.setData(ClipboardData(text: referralCode));
                    BottomSnackBar.show(SnackBarMessages.referralCodeCopied, ToastType.success);
                    },
                  child: Row(
                    children: [
                      RichText(
                        text:TextSpan(
                            text: '${'Referral Code'.translateWord} : ',
                            style:  AppStyle.textTheme.titleMedium!.copyWith(color: AppColors.blackColor.shade600),
                          children: [
                            TextSpan(
                              text: referralCode,
                              style:  AppStyle.textTheme.titleMedium!.copyWith(color:Colors.blue),
                            )
                          ]
                        )),

                  const CustomSizedBox(width: 4,),
                  Icon(
                    Icons.copy,
                    size: 16.w,
                  )
                    ],
                  ),
                ),
                ],
              )
            ],
          ),
          const CustomSizedBox(height: 16,),
          Row(
            children: [
              const CustomSizedBox(width: 16,),
              SvgPicture.asset(Assets.phoneDetails,height:16.r,width:16.r,),
              const CustomSizedBox(width: 8,),
              Text(phoneNumber,style: AppStyle.textTheme.titleMedium!.copyWith(color: AppColors.blackColor.shade500),)
            ],
          ),
          const CustomSizedBox(height: 16,)

        ],
      ),
    );
  }

}
