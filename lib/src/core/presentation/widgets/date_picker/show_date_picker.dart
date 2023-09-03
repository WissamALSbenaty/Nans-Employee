import 'package:nans/src/core/presentation/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void showCustomDatePicker({required DateTime initialDate, DateTime? startDate,
        DateTime? endDate, required BuildContext context,required void Function(DateTime?) onDateSelection })async{
      TextStyle mediumStyle=AppStyle.textTheme.titleMedium!,
                largeStyle=AppStyle.textTheme.bodyMedium!,
                hugeStyle=AppStyle.textTheme.bodyLarge!;


  DateTime? selectedDate= await showRoundedDatePicker(
    height: 400.h,
    context: context,
    locale: const Locale('en'),
    initialDate: initialDate,
    firstDate:startDate?? DateTime(DateTime.now().year - 5),
    lastDate:endDate?? DateTime(DateTime.now().year + 5),

    styleYearPicker: MaterialRoundedYearPickerStyle(
        textStyleYearSelected: hugeStyle,
        textStyleYear: largeStyle,

        backgroundPicker: AppStyle.backgroundColor),
    styleDatePicker: MaterialRoundedDatePickerStyle(

      paddingMonthHeader: EdgeInsets.only(top: 15.h),
      backgroundPicker: AppStyle.blue,
      textStyleDayOnCalendar:mediumStyle,
      textStyleDayOnCalendarSelected: largeStyle.copyWith(fontWeight: FontWeight.bold),

      textStyleMonthYearHeader: largeStyle,
      textStyleYearButton: largeStyle.copyWith(color: AppStyle.primary),
      textStyleDayButton: hugeStyle,

      textStyleButtonPositive: mediumStyle.copyWith(color: AppStyle.primary),
      textStyleButtonNegative: mediumStyle.copyWith(color: AppStyle.primary),
    ),
    theme: ThemeData(
        primaryColor: AppStyle.blackColor.shade600, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppStyle.primary).copyWith(secondary: AppStyle.primary)),
  );

  onDateSelection(selectedDate);
}
