


import 'package:etloob/src/core/Data/Errors/core_errors.dart';
import 'package:etloob/src/core/presentation/validators/custom_validator.dart';

class IsSmallerThanValidator extends CustomValidator{
  final int toCompare;

  IsSmallerThanValidator({required this.toCompare, super.nextValidator});

  @override
  String? validate({required String fieldName,required String? toCheckString}) {
    if(toCheckString==null|| int.parse(toCheckString)>=toCompare) {
      return IsNotSmallerError(fieldName:fieldName,number:toCompare).errorMessage;
    }
    return null;
  }

}