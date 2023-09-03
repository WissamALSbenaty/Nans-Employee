import 'package:nans/src/core/presentation/widgets/date_picker/show_date_picker.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/presentation/assets.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDatePicker extends StatelessWidget {

  final String title;
  final DateTime? initialDate;
  final DateTime startDate,endDate;
  final double width;
  final void Function(DateTime?)  onDatTimeSelection;


  const CustomDatePicker({Key? key, required this.title, this.initialDate, required this.onDatTimeSelection, this.width=138, required this.startDate, required this.endDate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  ()=>showCustomDatePicker(initialDate: initialDate??DateTime.now(),
          onDateSelection: onDatTimeSelection,
          context: context,endDate: endDate,startDate: startDate),
      child: Container(
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(10),
          border:Border.all(color: AppStyle.blackColor.shade200)
        ),
        height: 48.h,
        width : width.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [

              Text(initialDate?.dayFormat ?? title.translateWord,style:AppStyle.textTheme.bodyMedium!.copyWith(color: AppStyle.blackColor.shade800) ,),

              SvgPicture.asset(
                Assets.downArrow,
                height: 24.r,
                width : 24.r,
              ),
          ],
        ),
      ),
    );
  }
}
