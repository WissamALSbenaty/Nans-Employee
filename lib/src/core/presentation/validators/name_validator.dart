


import 'package:etloob/src/Data/Errors/core_errors.dart';
import 'package:etloob/src/core/presentation/validators/custom_validator.dart';

class NameValidator extends CustomValidator{

  NameValidator({super.nextValidator});

  @override
  void validate({required String fieldName,required String? toCheckString}) {
    if(toCheckString==null||  !RegExp(r'^[a-zA-Z]*$').hasMatch(toCheckString)) {
      throw  NotNameError(fieldName:fieldName);
    }
  }

}