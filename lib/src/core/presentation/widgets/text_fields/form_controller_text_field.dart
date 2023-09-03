import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nans/src/core/controllers/custom_form_mixin.dart';
import 'package:nans/src/core/presentation/validators/custom_validator.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:nans/src/core/util/enums.dart';

class FormControllerTextField extends StatelessWidget {
  final String title;
  final String? hint;
  final bool isObscureText,isEnabled;
  final Widget? suffixIcon,prefixIcon;
  final TextInputType? textInputType;
  final TextFieldPriority fieldPriority;
  final TextInputFormatter? inputFormatter;
  final CustomValidator? validator;
  final TextEditingController? controller;

  final int fieldIndex;
  final CustomFormMixin formController;

  const FormControllerTextField({Key? key, required this.title, this.isObscureText=false, this.suffixIcon,this.hint,this.isEnabled=true,
    this.prefixIcon, this.textInputType,this.inputFormatter,
    this.fieldPriority=TextFieldPriority.none, required this.validator,  this.controller, required this.fieldIndex, required this.formController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(title: title,
        onChangedFunction: (value)=>formController.changeFormValue(fieldIndex, value),
        validator: validator,
        focusNode: formController.focusNodes[fieldIndex],
        onSubmit:(_)=> fieldIndex==formController.currentValues.length? formController.submitForm():formController.focusNodes[fieldIndex+1].requestFocus(),
      initialValue: formController.currentValues[fieldIndex],
      controller: controller,
      fieldPriority: fieldPriority,
      hint: hint,
      inputFormatter: inputFormatter,
      isEnabled: isEnabled,
      isObscureText: isObscureText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      textInputType: textInputType,
    );
  }
}
