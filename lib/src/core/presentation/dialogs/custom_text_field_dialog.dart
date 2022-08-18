import 'package:flutter/material.dart';

class CustomTextFieldDialog extends StatefulWidget {
  final String title,mainActionText,textFieldTitle,dialogTextContent;
 final String? content;

final void Function(String) onMainActionPressed;


const CustomTextFieldDialog({Key? key, required this.title,required this.mainActionText, this.content,
  required this.onMainActionPressed,required this.textFieldTitle,required this.dialogTextContent,}):super(key: key);

  @override
  State<CustomTextFieldDialog> createState() => _CustomTextFieldDialogState();
}

class _CustomTextFieldDialogState extends State<CustomTextFieldDialog> {
  String currentTextFieldValue='';



@override
  Widget build(BuildContext context) {
    return const AlertDialog(

    );
  }
}
