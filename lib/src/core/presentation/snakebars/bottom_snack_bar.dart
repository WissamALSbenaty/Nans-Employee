
import 'package:easy_localization/easy_localization.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:flutter/material.dart';

final GlobalKey<ScaffoldMessengerState> snackbarKey = GlobalKey<ScaffoldMessengerState>();


class BottomSnackBar{

    static void show(String message,ToastType type,{void Function()? onRetry } ) {
      Color backgroundColor;
      switch (type) {
        case ToastType.success:
          backgroundColor = AppColors.blackColor;
          break;
        case ToastType.error:
          backgroundColor = AppColors.red60;
          break;
        default:
          backgroundColor = AppColors.blackColor;
      }

      snackbarKey.currentState?.clearSnackBars();


      snackbarKey.currentState?.showSnackBar(SnackBar(
          backgroundColor: backgroundColor,
          duration: const Duration(seconds: 1,milliseconds: 500),
          content: Text(message.tr(),style: AppStyle.textTheme.bodyText2!.copyWith(color: AppColors.whiteColor,
              fontWeight: FontWeight.bold),),
          action:onRetry!=null? SnackBarAction(
            label: 'Retry'.tr(),
            textColor: AppColors.whiteColor,
            onPressed: onRetry,
          ):null,
      ));

    }

}
