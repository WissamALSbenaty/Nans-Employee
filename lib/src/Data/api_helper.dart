import 'package:dio/dio.dart';
import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/Data/Errors/errors_factory.dart';
import 'package:nans/src/Data/models/pagination_response_model.dart';
import 'package:nans/src/core/util/constants.dart';
import 'package:nans/src/core/util/localization_manager.dart';
import 'package:injectable/injectable.dart';

import 'models/response_model.dart';

@singleton
class ApiHelper {
  late Dio _dio;
  final ErrorsFactory errorsFactory;
  final LocalizationManager localizationManager;

  ApiHelper(this.errorsFactory,this.localizationManager) {
    _dio = Dio();
    _dio.interceptors.addAll([ LogInterceptor(requestBody: true, request: false, responseBody: true, requestHeader: true, responseHeader: false,)
    ]);
  }

  String _userToken = '';

  void setToken(String token) => _userToken = token;

  String get userToken => _userToken;

  Map<String, String> _getHeaders({bool isAuthenticated = true}) => {
        "Accept-Language": localizationManager.isEnglishLanguage ? "en" : "ar",
        "accept": "application/json",
        if (isAuthenticated && userToken.length > 7) "Authorization": "Bearer $userToken",
      };

  Future<ResponseModel> _sendRequest(String methodName,String url,bool isAuthenticated,Map<String,dynamic> parameters)async{
    try {
      var response = await _dio.request('${Constants.baseUrl}/$url' ,
          options: Options(method: methodName,headers: _getHeaders(isAuthenticated: isAuthenticated)),
          queryParameters:methodName!="POST"&&methodName!="DELETE"? parameters:null,
          data:methodName=="POST"||methodName=="DELETE"?parameters:null,

      );

      return mapResponseToModel(response);
    } on DioError catch (e) {
      if((e.response?.statusCode?? 0)>=500 || e.type==DioErrorType.connectionTimeout||e.type==DioErrorType.unknown) {
        throw ServerError();
      } else if(e.response!.data is String){
        throw ServerError();
      } else {
        Map<String, dynamic> data = e.response!.data;
        ResponseModel responseModel = ResponseModel.fromMap(
            apiData: data, statusCode: e.response!.statusCode!);
        throw errorsFactory.mapStatusCodeToErrors(responseModel);
      }
    }
  }


  Future<ResponseModel> get({required String url, required Map<String, dynamic> parameters, bool isAuthenticated = true}) async {
    return await _sendRequest("GET", url, isAuthenticated, parameters);
  }

  Future<PaginationResponseModel> getPagination({required String url, required Map<String, dynamic> parameters, bool isAuthenticated = true}) async {
    return await _sendRequest("GET", url, isAuthenticated, parameters) as PaginationResponseModel;
  }
  Future<ResponseModel> post({required String url, bool isAuthenticated = true, required Map<String, dynamic> formData}) async {
    return await _sendRequest("POST", url, isAuthenticated, formData);
  }

  Future<ResponseModel> delete({required String url,Map<String, dynamic>? parameters,}) async {
    return await _sendRequest("DELETE", url, true,parameters??{});
  }



  ResponseModel mapResponseToModel(Response response) {
    Map<String, dynamic> data = response.data;
    if (data['currentPage'] != null) {
      return PaginationResponseModel.fromMap(apiData: data, statusCode: response.statusCode!);
    }
    return ResponseModel.fromMap(apiData: data, statusCode: response.statusCode!);
  }




}
