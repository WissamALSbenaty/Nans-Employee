import 'package:dio/dio.dart';
import 'package:merit_driver/dependencies.dart';
import 'package:merit_driver/src/Data/Errors/core_errors.dart';
import 'package:merit_driver/src/Data/Errors/errors_factory.dart';
import 'package:merit_driver/src/Data/models/pagination_response_model.dart';
import 'package:merit_driver/src/core/util/constants.dart';
import 'package:merit_driver/src/core/util/localization_manager.dart';
import 'package:injectable/injectable.dart';

import 'repositories/abstract/i_auth_repository.dart';
import 'models/response_model.dart';

@singleton
class ApiHelper {
  late Dio _dio;
  final ErrorsFactory errorsFactory;

  ApiHelper(this.errorsFactory) {
    _dio = Dio();
    _dio.interceptors.addAll([
      LogInterceptor(requestBody: true, request: false, responseBody: true, requestHeader: true, responseHeader: false,)
    ]);
  }

  String _userToken = '';

  void setToken(String token) => _userToken = token;

  String get userToken => "Bearer $_userToken";

  Map<String, String> _getHeaders({bool isAuthenticated = true}) => {
        "language":
            getIt<LocalizationManager>().isEnglishLanguage ? "en" : "ar",
        "channel": "3",
        "country": "1",
        "accept": "application/json",
        if (isAuthenticated && userToken.length > 7) "Authorization": userToken,
      };

  Future<ResponseModel> _sendRequest(String methodName,String url,bool isAuthenticated,Map<String,dynamic> parameters)async{
    try {
      var response = await _dio.request('$apiBaseUrl/$url',
          options: Options(method: methodName,headers: _getHeaders(isAuthenticated: isAuthenticated)),
          queryParameters:methodName!="POST"? parameters:null,
          data:methodName=="POST"?FormData.fromMap(parameters):null
      );

      return mapResponseToModel(response);
    } on DioError catch (e) {
      if ((e.requestOptions.headers.containsKey('Authorization')) && e.response?.statusCode == 401) {

        await _refreshToken();
        return await _sendRequest(methodName , url, isAuthenticated, parameters);

      }
      else if(e.type==DioErrorType.other) {
        throw InternetConnectionError();
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

  Future<ResponseModel> post({required String url, bool isAuthenticated = true, required Map<String, dynamic> formData}) async {
    return await _sendRequest("POST", url, isAuthenticated, formData);
  }

  Future<ResponseModel> delete({required String url}) async {
    return await _sendRequest("DELETE", url, true,{});
  }



  ResponseModel mapResponseToModel(Response response) {
    Map<String, dynamic> data = response.data;
    if (data['currentPage'] != null) {
      return PaginationResponseModel.fromMap(apiData: data, statusCode: response.statusCode!);
    }

    return ResponseModel.fromMap(apiData: data, statusCode: response.statusCode!);
  }

  Future<void>  _refreshToken() async {

    _dio.lock();
    await getIt<IAuthRepository>().refreshToken();
    _dio.unlock();
  }


}
