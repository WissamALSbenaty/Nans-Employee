import 'package:nans/src/Data/Errors/custom_error.dart';
import 'package:nans/src/core/presentation/assets.dart';
import 'package:nans/src/core/util/extentions.dart';



class NotFoundError extends CustomError{
  NotFoundError({ required String message}):super(errorMessage: message,imagePath: Assets.searchNotFound);
}

class BadRequestError extends CustomError{
  BadRequestError({ required String message}):super(errorMessage: message,imagePath: '');
}

class NotAuthorizedError extends CustomError{
  NotAuthorizedError({required String? message}):super(errorMessage:message?? 'You need to sign up first',imagePath: Assets.searchNotFound);
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

class ServerError extends CustomError{
  ServerError():super(errorMessage: "The Application is Under Maintenance Right Now...Please Try Again Later",imagePath: Assets.close,
  );
}

class SomethingWentWrongError extends CustomError{
  SomethingWentWrongError():super(errorMessage: "Something Went Wrong...Please Try Again Later", imagePath: '',
  );
}

class IsNotBiggerError extends CustomError{
  IsNotBiggerError({required String  fieldName,required num number}):
        super(errorMessage: "${fieldName.translateWord} ${"Should Be Bigger Than".translateWord} $number", imagePath: '',
      );
}

class IsNotSmallerError extends CustomError{
  IsNotSmallerError({required String  fieldName,required num number}):
        super(errorMessage: "${fieldName.translateWord} ${"Should Be Smaller Than".translateWord} $number", imagePath: '',
      );
}

class NotPhoneNumberError extends CustomError{
  NotPhoneNumberError({required String  fieldName}):
        super(errorMessage: "${fieldName.translateWord} ${"is Not a Valid Phone Number".translateWord}", imagePath: '',
      );
}

class NotNameError extends CustomError{
  NotNameError({required String  fieldName}):
        super(errorMessage: "${fieldName.translateWord} ${"is Not a Valid Name".translateWord}", imagePath: '',
      );
}

class NotEqualError extends CustomError{
  NotEqualError({required String  fieldName}):
        super(errorMessage: "${"the value is not equal to".translateWord} ${fieldName.translateWord}", imagePath: '',
      );
}

class NotNumberError extends CustomError{
  NotNumberError({required String  fieldName}):
        super(errorMessage: "${fieldName.translateWord} ${"is Not a Valid Number".translateWord}", imagePath: '',
      );
}
class EmptyFieldError extends CustomError{
  EmptyFieldError({required String  fieldName}):
        super(errorMessage: "${fieldName.translateWord} ${"should not be empty".translateWord}", imagePath: '',
      );
}
class EmptyItemsError extends CustomError{
  EmptyItemsError():
        super(errorMessage: "No items to show", imagePath: Assets.noPaymentCard,
      );
}