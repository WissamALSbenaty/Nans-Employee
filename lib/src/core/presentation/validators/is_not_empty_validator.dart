


import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/core/presentation/validators/custom_validator.dart';

class IsNotEmptyValidator extends CustomValidator{

  IsNotEmptyValidator({super.nextValidator});

  @override
  String? validate({required String fieldName,required String? toCheckString}) {
    if(toCheckString==null|| toCheckString.isEmpty) {
      return EmptyFieldError(fieldName:fieldName).errorMessage;
    }
    return null;
  }

}