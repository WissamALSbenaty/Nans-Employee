import 'package:dio/dio.dart';
import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/Data/Errors/errors_factory.dart';
import 'package:nans/src/Data/models/api_error_model.dart';
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/models/pagination_response_model.dart';
import 'package:nans/src/core/util/constants.dart';
import 'package:nans/src/core/util/enums.dart';
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

  Map<String, String> _getHeaders() => {
    "language": localizationManager.isEnglishLanguage ? "en" : "ar",
    "accept": "application/json",
    if ( userToken.length > 7) "Authorization": "Bearer $userToken",
  };

  Future<ResponseModel> _sendRequest(RequestType requestType,String url,Map<String,dynamic> parameters)async{
    try {
      var response = await _dio.request('${Constants.baseUrl}/$url' ,
        options: Options(method: requestType.name,headers: _getHeaders()),
        queryParameters:requestType==RequestType.GET? parameters:null,
        data:requestType!=RequestType.GET?parameters:null,

      );

      return mapResponseToModel(response);
    } on DioError catch (e) {
      if( e.type==DioErrorType.connectionTimeout||e.type==DioErrorType.unknown) {
        throw InternetConnectionError();
      } else if((e.response?.statusCode?? 0)>=500 || e.response!.data is String){
        throw ServerError();
      } else {
        Map<String, dynamic> data = e.response!.data;
        throw errorsFactory.mapStatusCodeToErrors(ApiErrorModel.fromMap(data));
      }
    }
  }


  Future<ResponseModel> _get({required String url, required Map<String, dynamic> parameters}) async {
    return await _sendRequest(RequestType.GET, url, parameters);
  }
  Future<T> getObject<T>({required String url,  required Map<String, dynamic> parameters,required T Function(Map<String,dynamic>) mapper}) async {
    Map<String,dynamic> data=(await _get(url:url, parameters: parameters)).data;
    return mapper(data);
  }
  Future<List<T>> getList<T>({required String url, required Map<String, dynamic> parameters,required T Function(Map<String,dynamic>) mapper}) async {
    ResponseModel response = await _get(url: url, parameters:parameters);
    List<dynamic> data=response.data;
    return data.map((e) => mapper(e)).toList();
  }

  Future<PaginationDataModel<T>> getPagination<T>({required String url, required Map<String, dynamic> parameters,required T Function(Map<String,dynamic>) mapper}) async {
    PaginationResponseModel response= await _sendRequest(RequestType.GET, url, parameters) as PaginationResponseModel;
    return  PaginationDataModel.fromPaginationResponse(response,mapper);
  }
  Future<ResponseModel> post({required String url, required Map<String, dynamic> formData}) async {
    return await _sendRequest(RequestType.POST, url,  formData);
  }
  Future<void> patch({required String url, required Map<String, dynamic> formData}) async {
    await _sendRequest(RequestType.PATCH, url,  formData);
  }
  Future<ResponseModel> delete({required String url,Map<String, dynamic>? parameters,}) async {
    return await _sendRequest(RequestType.DELETE, url, parameters??{});
  }



  ResponseModel mapResponseToModel(Response response) {
    Map<String, dynamic>? data = response.data;
    if(data==null) {
      return ResponseModel();
    }
    if (data['data']!=null &&  data['data']['records'] != null) {
      return PaginationResponseModel(data: data);
    }
    return ResponseModel.fromMap(apiData: data, );
  }




}
