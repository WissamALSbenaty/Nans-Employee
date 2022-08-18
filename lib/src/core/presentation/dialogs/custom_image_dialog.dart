
import 'package:flutter/material.dart';

class CustomImageDialog extends StatelessWidget {
  final String imagePath,mainActionTitle, content;
  final String? secondActionTitle,subtitle;

  final void Function() onMainActionPressed;
  final void Function()? onSecondActionPressed,onCloseButtonPressed;


  const CustomImageDialog({Key? key, required this.imagePath,required this.mainActionTitle,
    required this.content, required this.onMainActionPressed,
    this.onSecondActionPressed,this.secondActionTitle,this.subtitle, this.onCloseButtonPressed,
  }): assert(
    !((onSecondActionPressed==null && secondActionTitle!=null) || (onSecondActionPressed!=null && secondActionTitle==null))
  ),super(key: key);


  @override
  Widget build(BuildContext context) {
   return  const AlertDialog();

  }
}
