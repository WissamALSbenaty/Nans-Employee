


import 'package:etloob/src/Data/Errors/core_errors.dart';
import 'package:etloob/src/core/presentation/validators/custom_validator.dart';

class IsPhoneNumberValidator extends CustomValidator{

  IsPhoneNumberValidator({super.nextValidator});

  @override
  void validate({required String fieldName,required String? toCheckString}) {
    if( toCheckString==null|| ! RegExp(r'^(?:09)?\d{8}$').hasMatch(toCheckString)) {
      throw NotPhoneNumberError(fieldName:fieldName);
    }
  }

}