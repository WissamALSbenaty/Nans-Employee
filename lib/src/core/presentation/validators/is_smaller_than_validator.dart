


import 'package:merit_driver/src/Data/Errors/core_errors.dart';
import 'package:merit_driver/src/core/presentation/validators/custom_validator.dart';

class IsSmallerThanValidator extends CustomValidator{
  final int toCompare;

  IsSmallerThanValidator({required this.toCompare, super.nextValidator});

  @override
  void validate({required String fieldName,required String? toCheckString}) {

    if(toCheckString==null|| int.parse(toCheckString)>=toCompare) {
      throw IsNotSmallerError(fieldName:fieldName,number:toCompare);
    }
  }

}