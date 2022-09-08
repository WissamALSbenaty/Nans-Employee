
import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:merit_driver/src/core/util/enums.dart';
import 'package:flutter/material.dart';

final GlobalKey<ScaffoldMessengerState> snackbarKey = GlobalKey<ScaffoldMessengerState>();

class BottomSnackBar{

   static void show(String message,ToastType type, ) {
      Color backgroundColor;
      switch (type) {
        case ToastType.success:
          backgroundColor = ThemeManager.black;
          break;
        case ToastType.error:
          backgroundColor = ThemeManager.getTheme().errorColor;
          break;
        default:
          backgroundColor = ThemeManager.getTheme().primaryColor;
      }

      snackbarKey.currentState?.clearSnackBars();


      snackbarKey.currentState?.showSnackBar(SnackBar(
          backgroundColor: backgroundColor,
          duration: const Duration(seconds: 1,milliseconds: 500),
          content: Text(message.tr(),style: ThemeManager.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),),

      ));

    }

}
