


import 'dart:io';

import 'package:dio/dio.dart';
import 'package:etloob/src/core/Data/api_helper.dart';
import 'package:etloob/src/core/Data/models/app_config_model.dart';
import 'package:etloob/src/core/Data/models/app_translation_model.dart';
import 'package:etloob/src/core/Data/models/key_value_model.dart';
import 'package:etloob/src/core/Data/models/pagination_data_model.dart';
import 'package:etloob/src/core/Data/models/pagination_response_model.dart';
import 'package:etloob/src/core/Data/models/response_model.dart';
import 'package:etloob/src/core/Data/repositories/abstract/i_utils_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IUtilsRepository)
class UtilsRepository extends IUtilsRepository {
  UtilsRepository(ApiHelper apiHelper) :super(apiHelper);


  @override
  Future<AppConfigModel> getAppConfig() async{
    ResponseModel responseModel=await apiHelper.get(url: 'Settings/MobileSettings', parameters: {});
    Map<String,dynamic> data=responseModel.data;
    return AppConfigModel.fromJson(data);
  }

  @override
  Future<AppTranslationModel> getAppTranslation() async{

    ResponseModel responseModel=await apiHelper.get(url: 'Languages/MobileTranslations', parameters: {});
    List<dynamic> data= responseModel.data;
    return AppTranslationModel(translation:data.map((e) => KeyValueModel.fromJson(e)).toList());
  }



}