

import 'package:merit_driver/src/Data/Errors/custom_error.dart';

class UnConfirmedPasswordError extends CustomError{
  UnConfirmedPasswordError():super(errorMessage: 'UnConfirmedPasswordErrorMessage',);
}

class EmptyCompanyCategoryError extends CustomError{
  EmptyCompanyCategoryError():super(errorMessage: 'EmptyCompanyCategoryErrorMessage',);
}