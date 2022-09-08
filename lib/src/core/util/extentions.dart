



import 'package:merit_driver/dependencies.dart';
import 'package:merit_driver/src/core/util/json_converter.dart';
import 'package:flutter/cupertino.dart';

extension PrintDay on DateTime{
  String dayFormat(){
    return '$day/$month/$year';
  }
  int days(){
    return day + month*31 + year*360;
  }

}

extension ContextUtil on BuildContext{

  void clearData(){
  }

}


extension PrintString on String{
  String toCamelCase(){
    List<String> allLetters=split('');
    String ret='';
    for(int i=0;i<allLetters.length;i++){
      if(i==0) {
        ret+=allLetters[0].toUpperCase();
      } else if(allLetters[i][0]==allLetters[i][0].toUpperCase()) {
        ret+=' ${allLetters[i][0]}';
      } else {
        ret+=allLetters[i][0];
      }
    }
    return ret;
  }

  String localized(){
    return getIt<CustomJsonConverter>().getFromTranslation(this);
  }

}
