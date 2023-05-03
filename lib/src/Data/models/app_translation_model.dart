
import 'package:etloob/src/Data/models/key_value_model.dart';

class AppTranslationModel{

  final List<KeyValueModel> translation;

  AppTranslationModel({required this.translation});

  String translate(String word){
    try{
      KeyValueModel matchedKeyValue= translation.firstWhere((e)=>e.key==word);
      return matchedKeyValue.value;
    }
    catch(_){
      return word;
    }
  }


}