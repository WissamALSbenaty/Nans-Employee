
import 'package:easy_localization/easy_localization.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/util/enums.dart';
import 'package:flutter/material.dart';

final GlobalKey<ScaffoldMessengerState> snackbarKey = GlobalKey<ScaffoldMessengerState>();


class BottomSnackBar{

    static void show(String message,ToastType type) {
      Color backgroundColor;
      switch (type) {
        case ToastType.success:
          backgroundColor = AppColors.blackColor;
          break;
        case ToastType.error:
          backgroundColor = AppColors.errorColor;
          break;
        default:
          backgroundColor = AppColors.blackColor;
      }

      snackbarKey.currentState?.clearSnackBars();


      snackbarKey.currentState?.showSnackBar(SnackBar(
          backgroundColor: backgroundColor,
          duration: const Duration(seconds: 1,milliseconds: 500),
          content: Text(message.tr(),style: AppStyle.textTheme.bodyMedium!.copyWith(color: Colors.white,
              fontWeight: FontWeight.bold),),
      ));

    }

}
