import 'package:etloob/src/core/presentation/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRadioTile<T> extends StatelessWidget {
  final void Function(T?) onTapRadio;
  final T value;
  final T? selectedValue;
  final String Function(T) titleGetter;
  final String Function(T)?  subtitleGetter,trailingGetter;


  const CustomRadioTile(
      {Key? key, required this.onTapRadio, required this.value, required this.selectedValue,
       this.trailingGetter, required this.titleGetter,  this.subtitleGetter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected=value==selectedValue;

    return GestureDetector(
      onTap: ()=>onTapRadio(value),
      child: Container(
        padding:EdgeInsets.symmetric(horizontal: 16.w) ,
        decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.circular(8),
          border: isSelected ?Border.all(width: 2,color: AppColors.secondaryYellow):null,
        ),

        child: Row(
          children: [
            Radio<T>(
              value: value,
              groupValue: selectedValue,

              activeColor: AppColors.secondaryYellow,
              onChanged: onTapRadio,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titleGetter(value),style:
                     subtitleGetter==null? AppStyle.textTheme.bodyText2!.copyWith(
                         fontWeight: FontWeight.bold,color:isSelected?AppColors.secondaryYellow:AppColors.blackColor.shade300 ):

                     AppStyle.textTheme.subtitle1!.copyWith(
                         fontWeight: FontWeight.bold,color:isSelected?AppColors.secondaryYellow:AppColors.blackColor.shade300 ),
                ),

                if(subtitleGetter!=null)
                Text(subtitleGetter!(value),style: AppStyle.textTheme.subtitle2!.copyWith(color:isSelected?AppColors.secondaryYellow:AppColors.blackColor.shade300 )
                ),
              ],
            ),

            const Spacer(),

            if(trailingGetter!=null)
              Text(trailingGetter!(value),style: AppStyle.textTheme.bodyText2!.copyWith(
                  color: isSelected?AppColors.secondaryYellow:AppColors.blackColor.shade300,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}