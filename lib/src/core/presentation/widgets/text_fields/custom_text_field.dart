import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/validators/custom_validator.dart';
import 'package:nans/src/core/util/enums.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {

  final String title;
  final String? hint,initialValue;
  final bool isObscureText,isEnabled;
  final Widget? suffixIcon,prefixIcon;
  final TextInputType? textInputType;
  final TextFieldPriority fieldPriority;
  final void Function(String)? onChangedFunction;
  final TextInputFormatter? inputFormatter;
  final CustomValidator? validator;
  final TextEditingController? controller;


  const CustomTextField({Key? key, required this.title, this.isObscureText=false, this.suffixIcon,this.hint,this.isEnabled=true,
    this.prefixIcon, required this.onChangedFunction,this.textInputType,this.initialValue,this.inputFormatter,
    this.fieldPriority=TextFieldPriority.none, required this.validator,  this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: isEnabled,
      controller: controller,
      initialValue: initialValue,
      obscureText: isObscureText,
      onChanged: onChangedFunction,
      keyboardType: textInputType,
      validator: (value)=>validator?.check(fieldName: title, toCheckString: value),
      cursorColor: AppColors.blackColor.shade600,
      inputFormatters: [
        if(inputFormatter!=null)
          inputFormatter!,
      ],
      decoration:   InputDecoration(

        hintText: hint?.translateWord,
        hintStyle: AppStyle.textTheme.titleMedium,
        suffixIcon: suffixIcon!=null? Center(child: suffixIcon!,):Container(),

        prefixIcon: prefixIcon  ,
        alignLabelWithHint: true,
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.blackColor.shade200),
        ),
        focusedBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.yellow),
        ),
        errorBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.pink),
        ),
        focusedErrorBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.errorColor),
        ),


        prefixIconConstraints: BoxConstraints(

          minWidth: 60.r,
          maxWidth: 60.r,
        ),
        suffixIconConstraints: BoxConstraints(

          minWidth: 60.r,
          maxWidth: 60.r,
        ),

        label: RichText(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
              text: title.translateWord,
              style: AppStyle.textTheme.bodyMedium!.copyWith(color: AppColors.blackColor.shade600),
              children: [
                TextSpan(
                  text:fieldPriority!=TextFieldPriority.none? ' (${fieldPriority.name.translateWord})':'',
                  style: AppStyle.textTheme.titleMedium!.copyWith(color: AppColors.errorColor),

                )
              ]
          ),
        ),
      ),
    );
  }
}
