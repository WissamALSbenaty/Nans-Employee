import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/core/presentation/validators/custom_validator.dart';

class IsEqualValidator extends CustomValidator{

  final String? toCompare;
  IsEqualValidator({ required this.toCompare, super.nextValidator});

  @override
  String? validate({required String fieldName,required String? toCheckString}) {
    if(toCompare!=toCheckString) {
      return NotEqualError(fieldName:fieldName,).errorMessage;
    }
    return null;
  }

}