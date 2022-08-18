import 'package:flutter/material.dart';

class CustomInfoDialog extends StatelessWidget {
  final String title,mainActionText;
  final String? content,secondActionText;

  final void Function() onMainActionPressed;
  final void Function()? onSecondActionPressed;


  const CustomInfoDialog({Key? key, required this.title,required this.mainActionText, this.content,
    this.secondActionText,required this.onMainActionPressed,
    this.onSecondActionPressed}):assert(
    !((secondActionText!=null && onSecondActionPressed==null )||(secondActionText==null && onSecondActionPressed!=null ))
  ), super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
   );
  }
}
