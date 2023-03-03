import 'package:etloob/src/core/presentation/validators/is_phone_number_validator.dart';
import 'package:etloob/src/core/presentation/widgets/text_fields/custom_text_field.dart';
import 'package:etloob/src/core/util/masked_formatter.dart';
import 'package:flutter/material.dart';

class PhoneNumberTextField extends StatelessWidget {
  final void Function(String?) onChangedFunction;
  const PhoneNumberTextField({Key? key, required this.onChangedFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
        validator: IsPhoneNumberValidator(),
        title: 'Phone Number',
    textInputType: TextInputType.phone,
    inputFormatter: MaskedInputFormatter('0000000000',),
    onChangedFunction: onChangedFunction);
  }
}
