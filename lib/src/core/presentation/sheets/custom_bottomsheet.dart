import 'package:merit_driver/src/core/presentation/sheets/sheet_header.dart';
import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

Future showCustomBottomSheet(BuildContext context,Widget sheetWidget ,List<double> snappingHeights,{bool isDismissable=true}) {

  // snapping Heights is percent value of the screen that the sheet stops on

  return showSlidingBottomSheet( context,
       builder:(ctx) {
        bool isDarkMode = ThemeManager.isDarkMode;

         return SlidingSheetDialog(

         duration: const Duration(milliseconds: 300),
         cornerRadius: 16,
         isDismissable: isDismissable,
         backdropColor:ThemeManager.black.withOpacity(0.6),
         avoidStatusBar: true,
         isBackdropInteractable: true,
         //extendBody: true,
         color:  ThemeManager.black,


         snapSpec: SnapSpec(
           snappings: snappingHeights,
         ),
         headerBuilder:(ctx2,start){
           return const SheetHeader();
       },
       builder: (_,__)=>Material(
           color:isDarkMode? ThemeManager.darkModeColor.shade600 :ThemeManager.white,
           child: sheetWidget,
       ),


   );
       });
}