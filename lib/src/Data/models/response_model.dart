


class ResponseModel{
   final dynamic data;

   ResponseModel({ this.data,});

   factory ResponseModel.fromMap({required Map<String,dynamic> apiData}){

      dynamic data;

      if(apiData.containsKey("data")) {
         data= apiData['data'];
      }
      return ResponseModel(
         data: data,
      );

   }
}