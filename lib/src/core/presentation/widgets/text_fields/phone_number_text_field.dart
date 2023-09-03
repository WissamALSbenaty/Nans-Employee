import 'package:nans/src/core/controllers/custom_form_mixin.dart';
import 'package:nans/src/core/presentation/validators/is_phone_number_validator.dart';
import 'package:nans/src/core/presentation/widgets/text_fields/form_controller_text_field.dart';
import 'package:nans/src/core/util/masked_formatter.dart';
import 'package:flutter/material.dart';

class PhoneNumberTextField extends StatelessWidget {
  final int fieldIndex;
  final CustomFormMixin formController;
  const PhoneNumberTextField({Key? key, required this.fieldIndex, required this.formController,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormControllerTextField(
        validator: IsPhoneNumberValidator(),
        title: 'Phone Number',
    textInputType: TextInputType.phone,
    inputFormatter: MaskedInputFormatter('0000000000',),
      fieldIndex:fieldIndex,formController:formController
    );
  }
}
