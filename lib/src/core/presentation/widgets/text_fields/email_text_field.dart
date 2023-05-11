import 'package:flutter/material.dart';
import 'package:nans/src/core/presentation/validators/not_empty_validator.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/custom_text_field.dart';

class EmailTextField extends StatelessWidget {

  final void Function(String?) onChangedFunction;
  const EmailTextField({Key? key, required this.onChangedFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(title: 'Email',textInputType: TextInputType.emailAddress,
      validator: NotEmptyValidator(),
      onChangedFunction: onChangedFunction,

    );
  }
}
