


class ApiErrorModel{
  final int statusCode;
  final String errorMessage;

  ApiErrorModel(this.statusCode, this.errorMessage);

  factory ApiErrorModel.fromMap(Map<String,dynamic> data){
    return ApiErrorModel(data['statusCode'], data['error']['message']);
  }

}