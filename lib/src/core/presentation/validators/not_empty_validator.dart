


import 'package:etloob/src/Data/Errors/core_errors.dart';
import 'package:etloob/src/core/presentation/validators/custom_validator.dart';

class NotEmptyValidator extends CustomValidator{

  NotEmptyValidator({super.nextValidator});

  @override
  String? validate({required String fieldName,required String? toCheckString}) {
    if(toCheckString==null|| toCheckString.isEmpty) {
      return EmptyFieldError(fieldName:fieldName).errorMessage;
    }
    return null;
  }

}