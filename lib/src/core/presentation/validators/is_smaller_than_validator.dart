


import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/core/presentation/validators/custom_validator.dart';

class IsSmallerThanValidator extends CustomValidator{
  final num toCompare;
  final bool allowEquality;
  IsSmallerThanValidator( {required this.toCompare,required this.allowEquality, super.nextValidator});

  @override
  String? validate({required String fieldName,required String? toCheckString}) {
    if(toCheckString!=null &&  (num.parse(toCheckString)<toCompare ||(num.parse(toCheckString)==toCompare && allowEquality) )) {
      return null;
    }
    return IsNotSmallerError(fieldName:fieldName,number:toCompare).errorMessage;
  }

}