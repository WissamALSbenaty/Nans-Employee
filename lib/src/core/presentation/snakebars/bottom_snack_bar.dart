
import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/src/core/presentation/style.dart';
import 'package:merit_driver/src/core/util/enums.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

final GlobalKey<ScaffoldMessengerState> snackbarKey = GlobalKey<ScaffoldMessengerState>();

@singleton
class BottomSnackBar{
  final ThemeManager themeManager;

  BottomSnackBar(this.themeManager);

  void show(String message,ToastType type,{void Function()? onRetry } ) {
      Color backgroundColor;
      switch (type) {
        case ToastType.success:
          backgroundColor = themeManager.black;
          break;
        case ToastType.error:
          backgroundColor = themeManager.getTheme().errorColor;
          break;
        default:
          backgroundColor = themeManager.getTheme().primaryColor;
      }

      snackbarKey.currentState?.clearSnackBars();


      snackbarKey.currentState?.showSnackBar(SnackBar(
          backgroundColor: backgroundColor,
          duration: const Duration(seconds: 1,milliseconds: 500),
          content: Text(message.tr(),style: themeManager.getTheme().textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),),
          action:onRetry!=null? SnackBarAction(
            label: 'Retry'.tr(),
            textColor: themeManager.white,
            onPressed: onRetry,
          ):null,
      ));

    }

}
