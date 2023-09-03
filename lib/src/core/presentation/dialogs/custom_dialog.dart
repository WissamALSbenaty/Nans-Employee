



import 'package:flutter/material.dart';
import 'package:nans/src/core/presentation/auto_router.dart';

  void showCustomDialog({bool isDismissible=true,required Widget dialog}){
    showDialog(
      context: appRouter.navigatorKey.currentContext!,
      barrierDismissible: isDismissible,
      builder:(dialogCtx)=> dialog,
    );
}