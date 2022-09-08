

import 'dart:convert';

import 'package:merit_driver/src/Data/models/translate_model.dart';
import 'package:merit_driver/src/core/util/localization_manager.dart';
import 'package:injectable/injectable.dart';

@singleton
class CustomJsonConverter{

  final LocalizationManager _localizationManager;

  CustomJsonConverter(this._localizationManager);

  List<TranslateModel> _getTranslatedModels(String data){
    List<dynamic> dataMap=json.decode(data);
    return dataMap.map((e) => TranslateModel.fromMap(e)).toList();
  }

  String getFromTranslation(  String data){
    try {
      List<TranslateModel> translatedData = _getTranslatedModels(data);
      if (translatedData.length == 1) {
        return translatedData.first.title;
      }
      return translatedData[_localizationManager.isEnglishLanguage ? 0 : 1]
          .title;
    }
    catch (_){
      return data;
    }
  }



}