import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:merit_driver/src/core/util/enums.dart';
import 'package:merit_driver/src/core/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {

  final String title;
  final String? hint,initialValue;
  final bool isObscureText,isEnabled;
  final Widget? suffixIcon,prefixIcon;
  final TextInputType? textInputType;
  final TextFieldPriority fieldPriority;
  final void Function(String)? onChangedFunction;
  final TextInputFormatter? inputFormatter;



  const CustomTextField({Key? key, required this.title, this.isObscureText=false, this.suffixIcon,this.hint,this.isEnabled=true,
    this.prefixIcon, required this.onChangedFunction,this.textInputType,this.initialValue='',this.inputFormatter,
    this.fieldPriority=TextFieldPriority.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme theme= ThemeManager.textTheme;
    bool isDarkMode =ThemeManager.isDarkMode;
    Color textFieldColor=isDarkMode? ThemeManager.darkModeColor.shade200:ThemeManager.black.shade200;

    return Container(
      height: SizeConfig.h(54),
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.w(16)),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: textFieldColor)
      ),
      child: TextFormField(
        style: theme.bodyText2!.copyWith(color: isDarkMode? null:ThemeManager.primaryColor),
        enabled: isEnabled,
        initialValue: initialValue,
        obscureText: isObscureText,
        onChanged: onChangedFunction,
        keyboardType: textInputType,
        inputFormatters: [
          if(inputFormatter!=null)
            inputFormatter!,
        ],
        decoration:   InputDecoration(

          hintText: hint?.tr(),
          hintStyle:theme.subtitle1,
          suffixIcon: suffixIcon??Container(),

          prefixIcon: prefixIcon,
          isDense: true,
          border:InputBorder.none,

          focusedBorder:InputBorder.none,

          prefixIconConstraints: BoxConstraints(

            minWidth: SizeConfig.h(24),
            maxWidth: SizeConfig.h(24),
          ),
          suffixIconConstraints: BoxConstraints(

            minWidth: SizeConfig.h(24),
            maxWidth: SizeConfig.h(24),
          ),
          label: RichText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
                text: title.tr(),
                style:theme.subtitle1!.copyWith(color: textFieldColor),
                children: [
                  TextSpan(
                    text:fieldPriority!=TextFieldPriority.none? ' (${fieldPriority.name.tr()})':'',
                    style:theme.headline6!.copyWith(color: textFieldColor),

                  )
                ]
            ),
          ),


        ),
      ),
    );
  }
}
