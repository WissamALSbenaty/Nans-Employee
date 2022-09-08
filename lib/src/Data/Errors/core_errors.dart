import 'package:easy_localization/easy_localization.dart';
import 'package:merit_driver/src/Data/Errors/custom_error.dart';
import 'package:merit_driver/src/core/presentation/assets.dart';



class NotFoundError extends CustomError{
  NotFoundError({ required String message}):super(errorMessage: message,imagePath: Assets.notFound);
}

class BadRequestError extends CustomError{
  BadRequestError({ required String message}):super(errorMessage: message,imagePath: '');
}

class NotAuthorizedError extends CustomError{
  NotAuthorizedError():super(errorMessage: 'You need to sign up first',imagePath: Assets.notFound);
}

class ForbiddenError extends CustomError{
  ForbiddenError({ required String message}):super(errorMessage: message,imagePath: '');
}

class UnprocessableEntityError extends CustomError{
  UnprocessableEntityError({ required String message}):super(errorMessage: message,imagePath: '');
}

class InternetConnectionError extends CustomError{
  InternetConnectionError():super(errorMessage: "Please Check Your Internet Connection",imagePath: Assets.noInternet,
  );
}
class SomethingWentWrongError extends CustomError{
  SomethingWentWrongError():super(errorMessage: "Something Went Wrong...Please Try Again Later", imagePath: '',
  );
}

class IsNotBiggerError extends CustomError{
  IsNotBiggerError({required String  fieldName,required int number}):
        super(errorMessage: "${fieldName.tr()} ${"Should Be Bigger Than".tr()} $number", imagePath: '',
      );
}

class IsNotSmallerError extends CustomError{
  IsNotSmallerError({required String  fieldName,required int number}):
        super(errorMessage: "${fieldName.tr()} ${"Should Be Smaller Than".tr()} $number", imagePath: '',
      );
}

class NotPhoneNumberError extends CustomError{
  NotPhoneNumberError({required String  fieldName}):
        super(errorMessage: "${fieldName.tr()} ${"is Not a Valid Phone Number".tr()}", imagePath: '',
      );
}

class NotNameError extends CustomError{
  NotNameError({required String  fieldName}):
        super(errorMessage: "${fieldName.tr()} ${"is Not a Valid Name".tr()}", imagePath: '',
      );
}

class NotNumberError extends CustomError{
  NotNumberError({required String  fieldName}):
        super(errorMessage: "${fieldName.tr()} ${"is Not a Valid Number".tr()}", imagePath: '',
      );
}

class EmptyFieldError extends CustomError{
  EmptyFieldError({required String  fieldName}):
        super(errorMessage: "${fieldName.tr()} ${"Should Not Be Empty".tr()}", imagePath: '',
      );
}