


import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/core/presentation/validators/custom_validator.dart';

class IsNumberValidator extends CustomValidator{

  IsNumberValidator({super.nextValidator});

  @override
  String? validate({required String fieldName,required String? toCheckString}) {
    if(toCheckString==null|| num.tryParse(toCheckString)==null) {
      return NotNumberError(fieldName:fieldName).errorMessage;
    }
    return null;
  }

}