


import 'package:merit_driver/src/Data/Errors/core_errors.dart';
import 'package:merit_driver/src/core/presentation/validators/custom_validator.dart';

class IsNumberValidator extends CustomValidator{

  IsNumberValidator({super.nextValidator});

  @override
  void validate({required String fieldName,required String? toCheckString}) {
    if(toCheckString==null|| int.tryParse(toCheckString)==null) {
      throw NotNumberError(fieldName:fieldName);
    }
  }

}