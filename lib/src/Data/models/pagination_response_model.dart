import 'package:nans/src/Data/models/response_model.dart';

class PaginationResponseModel extends ResponseModel{

  final int currentPage,totalPages,totalCount,pageSize;


  PaginationResponseModel(
      {
      required int statusCode,
      required bool isSucceeded,
      required dynamic data,
              String? errorMessage,
      required this.currentPage,
      required this.totalPages,
      required this.totalCount,
      required this.pageSize,}):super(statusCode: statusCode,isSucceeded: isSucceeded,data: data,errorMessage: errorMessage);

  factory PaginationResponseModel.fromMap({required Map<String,dynamic> apiData,required int statusCode}){
    return PaginationResponseModel(statusCode: statusCode,
              isSucceeded: apiData['succeeded'],
              data: apiData['data'],
              currentPage: apiData['currentPage'],
              totalPages: apiData['totalPages'],
              totalCount: apiData['totalCount'],
              pageSize: apiData['pageSize'],);
  }


}