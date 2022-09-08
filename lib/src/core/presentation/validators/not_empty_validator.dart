


import 'package:merit_driver/src/Data/Errors/core_errors.dart';
import 'package:merit_driver/src/core/presentation/validators/custom_validator.dart';

class NotEmptyValidator extends CustomValidator{

  NotEmptyValidator({super.nextValidator});

  @override
  void validate({required String fieldName,required String? toCheckString}) {
    if(toCheckString==null|| toCheckString.isEmpty) {
      throw  EmptyFieldError(fieldName:fieldName);
    }
  }

}