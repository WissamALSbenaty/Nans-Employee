



import 'package:nans/src/Data/Errors/custom_error.dart';
import 'package:nans/src/core/presentation/assets.dart';

class EmploeeWithoutCurrentRequestError extends CustomError{
  EmploeeWithoutCurrentRequestError():super(imagePath: Assets.searchNotFound,errorMessage: "You dont have any request .. pick one !" );

}