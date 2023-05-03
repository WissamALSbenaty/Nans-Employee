


import 'package:etloob/src/Data/Errors/core_errors.dart';
import 'package:etloob/src/core/presentation/validators/custom_validator.dart';

class IsBiggerThanValidator extends CustomValidator{
  final int toCompare;

  IsBiggerThanValidator({required this.toCompare, super.nextValidator});

  @override
  String? validate({required String fieldName,required String? toCheckString}) {
    if(toCheckString==null||  int.parse(toCheckString)<=toCompare) {
      return IsNotBiggerError(fieldName:fieldName,number:toCompare).errorMessage;
    }
    return null;
  }

}