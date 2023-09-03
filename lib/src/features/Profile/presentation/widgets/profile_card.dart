import 'package:nans/src/core/presentation/assets.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileCard extends StatelessWidget {
  final String name, phoneNumber,email;
  const ProfileCard({Key? key,required this.name,required this.email,required this.phoneNumber}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        color: Colors.white,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 37.r,
                    backgroundColor: AppStyle.primary,
                    child:Center(
                      child: Text(
                        name.split(' ')[0][0],style: AppStyle.textTheme.displayMedium!.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    )
                    ,),
                  const CustomSizedBox(width: 16,),
                  const CustomSizedBox(height: 16,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CustomSizedBox(width: 16,),
                          SvgPicture.asset(Assets.phoneDetails,height:16.r,width:16.r,),
                          const CustomSizedBox(width: 8,),
                          Text(phoneNumber,style: AppStyle.textTheme.titleMedium!.copyWith(color: AppStyle.blackColor.shade500),)
                        ],
                      ),
                      Row(
                        children: [
                          const CustomSizedBox(width: 16,),
                          SvgPicture.asset(Assets.user,height:16.r,width:16.r,color: AppStyle.blackColor.shade500),
                          const CustomSizedBox(width: 8,),
                          Text(email,style: AppStyle.textTheme.titleMedium!.copyWith(color: AppStyle.blackColor.shade500),)
                        ],
                      ),
                    ],
                  ),


                  const CustomSizedBox(height: 16,)

                ],
              ),

            ]));
  }

}
