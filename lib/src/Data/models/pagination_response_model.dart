import 'package:nans/src/Data/models/response_model.dart';

class PaginationResponseModel extends ResponseModel{


  PaginationResponseModel({required Map<String,dynamic> data }):super(data:data['data']['records']);

}