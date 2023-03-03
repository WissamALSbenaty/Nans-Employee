



import 'package:easy_localization/easy_localization.dart';
import 'package:etloob/dependencies.dart';
import 'package:etloob/src/core/controllers/app_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

extension PrintDateTime on DateTime{
  String get dayFormat{
    return '$day/$month/$year';
  }
  Duration get subtractFromNow=>difference(DateTime.now());

}

extension PrintDuration on Duration{
  String get timerFormat{
    return "$inHours:${inMinutes.remainder(60)}:${(inSeconds.remainder(60))}";

  }

}

extension ContextUtil on BuildContext{

   void clearData(){
    }
}


extension PrintString on String{
  String get toCamelCase{
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

  String get translateWord {
    AppController appController=getIt<AppController>();
    return appController.applicationTranslationModel?.translate(this) ?? this;
  }


}

extension NumberUtil on num{
  int get  ceilHundred{
    int thisNumberRounded=round();
    int leftToRound=thisNumberRounded%100;

    return leftToRound==0? thisNumberRounded :(thisNumberRounded -leftToRound)+100;

  }
}


extension IntUtil on int{

  String currency(BuildContext context){
    String thousandFormat= NumberFormat.decimalPattern('en').format(this) ;
    AppController appController=getIt<AppController>();
    return "$thousandFormat ${appController.appConfigModel?.mobileSettings.currency ?? ''}";
  }
}
