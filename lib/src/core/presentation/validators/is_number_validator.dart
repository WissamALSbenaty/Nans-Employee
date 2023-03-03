


import 'package:etloob/src/core/Data/Errors/core_errors.dart';
import 'package:etloob/src/core/presentation/validators/custom_validator.dart';

class IsNumberValidator extends CustomValidator{

  IsNumberValidator({super.nextValidator});

  @override
  String? validate({required String fieldName,required String? toCheckString}) {
    if(toCheckString==null|| int.tryParse(toCheckString)==null) {
      return NotNumberError(fieldName:fieldName).errorMessage;
    }
    return null;
  }

}