


import 'package:etloob/src/core/Data/Errors/core_errors.dart';
import 'package:etloob/src/core/presentation/validators/custom_validator.dart';

class IsPhoneNumberValidator extends CustomValidator{

  IsPhoneNumberValidator({super.nextValidator});

  @override
  String? validate({required String fieldName,required String? toCheckString}) {
    if( toCheckString==null|| ! RegExp(r'^\d{10}$').hasMatch(toCheckString)) {
      return NotPhoneNumberError(fieldName:fieldName).errorMessage;
    }
    return null;
  }

}