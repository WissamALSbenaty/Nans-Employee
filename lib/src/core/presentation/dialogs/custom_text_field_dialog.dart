import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:merit_driver/src/core/presentation/widgets/custom_text_field.dart';
import 'package:merit_driver/src/core/presentation/widgets/main_button.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/material.dart';

class CustomTextFieldDialog extends StatefulWidget {
  final String title,mainActionText,textFieldTitle;
 final String? content;

final void Function(String) onMainActionPressed;


const CustomTextFieldDialog({Key? key, required this.title,required this.mainActionText, this.content,
  required this.onMainActionPressed,required this.textFieldTitle}):super(key: key);

  @override
  State<CustomTextFieldDialog> createState() => _CustomTextFieldDialogState();
}

class _CustomTextFieldDialogState extends State<CustomTextFieldDialog> {
  String currentTextFieldValue='';


@override
  Widget build(BuildContext context) {
  TextTheme theme=ThemeManager.textTheme;
  bool isDarkMode = ThemeManager.isDarkMode;
  return  AlertDialog(
    backgroundColor: isDarkMode? ThemeManager.darkModeColor.shade600:ThemeManager.white,
    actionsPadding: EdgeInsets.all(SizeConfig.h(16)),
    contentPadding: EdgeInsets.all(SizeConfig.h(16)),
    titlePadding: EdgeInsets.all( SizeConfig.h(16)),

    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)),

    title: Text(widget.title.tr(),style: theme.bodyText2!.copyWith(
        color: isDarkMode? null:ThemeManager.darkModeColor.shade800,
        fontWeight: FontWeight.bold),),
    content: CustomTextField(
      title: widget.textFieldTitle,
      onChangedFunction: (value ) {
        currentTextFieldValue=value;
      },
    ),

    actions: [
      MainButton(title: widget.mainActionText, onPressed:()=>widget.onMainActionPressed(currentTextFieldValue),height: 64),

    ],

  );
  }
}
