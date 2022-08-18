


class ResponseModel{
   final bool isSucceeded;
   final dynamic data;
   final String? errorMessage;
   final int statusCode;

   ResponseModel({required this.isSucceeded, this.data, this.errorMessage,required this.statusCode});

  factory ResponseModel.fromMap({required Map<String,dynamic> apiData,required int statusCode}){

    dynamic data;

    if(apiData.containsKey("data")) {
       data= apiData['data'];
     }
      List<dynamic> messages=apiData['messages'];
      String? errorMessage;
      if(messages.isNotEmpty) {
        errorMessage=messages[0] as String;
      }

    return ResponseModel(
        statusCode:statusCode ,
        isSucceeded:apiData['succeeded'],
        errorMessage: errorMessage,
        data: data,
    );

  }
}