


import 'package:merit_driver/src/Data/Errors/core_errors.dart';
import 'package:merit_driver/src/Data/Errors/custom_error.dart';
import 'package:merit_driver/src/Data/models/response_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class ErrorsFactory{

  CustomError mapStatusCodeToErrors(ResponseModel responseModel){

    if(responseModel.statusCode==400) {
      return BadRequestError(message: responseModel.errorMessage!);
    }
    if(responseModel.statusCode==401) {
      return NotAuthorizedError();
    }
    if(responseModel.statusCode==403) {
      return ForbiddenError(message: responseModel.errorMessage!);
    }
    if(responseModel.statusCode==404) {
      return NotFoundError(message: responseModel.errorMessage!);
    }
    if(responseModel.statusCode==422) {
      return UnprocessableEntityError(message: responseModel.errorMessage!);
    }

    return SomethingWentWrongError();
  }

}