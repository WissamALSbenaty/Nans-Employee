import 'package:nans/src/core/presentation/validators/is_number_validator.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:nans/src/core/util/masked_formatter.dart';
import 'package:flutter/material.dart';

class OtpTextField extends StatelessWidget {
  final void Function(String?) onChangedFunction;
  const OtpTextField({Key? key, required this.onChangedFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(title: 'Verify Mobile Number',textInputType: TextInputType.number,
      validator: IsNumberValidator(),
      inputFormatter: MaskedInputFormatter('000000',),
      onChangedFunction: onChangedFunction,
    );
  }
}
