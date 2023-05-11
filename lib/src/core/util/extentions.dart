



import 'package:nans/dependencies.dart';
import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:flutter/cupertino.dart';

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
  String get capitalFirst{
    return this[0].toUpperCase()+substring(1);
  }
  String get lowerFirst{
    return this[0].toLowerCase()+substring(1);
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
