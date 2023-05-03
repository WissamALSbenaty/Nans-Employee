


import 'package:etloob/src/Data/Errors/core_errors.dart';
import 'package:etloob/src/Data/Errors/custom_error.dart';
import 'package:etloob/src/Data/models/response_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class ErrorsFactory{

  CustomError mapStatusCodeToErrors(ResponseModel responseModel){

    if(responseModel.statusCode==400) {
      return BadRequestError(message: responseModel.errorMessage!);
    }
    if(responseModel.statusCode==401) {
      return NotAuthorizedError(message: responseModel.errorMessage);
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