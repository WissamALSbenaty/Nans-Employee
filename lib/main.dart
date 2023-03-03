import 'dart:async';
import 'dart:isolate';

import 'package:easy_localization/easy_localization.dart';
import 'package:etloob/src/core/util/constants.dart';
import 'package:etloob/src/features/app/presentation/pages/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';

import 'dependencies.dart';

void main() async{
  await initApp();
   runZonedGuarded(() async {



     runApp(EasyLocalization(

    supportedLocales: const [
      Locale('en'),
      Locale('ar'),
    ],
    path: 'assets/Translations',


    fallbackLocale:  const Locale('en'),

    child: const App(),

  ));
   },
    (object,stackTracer){

    });
}

Future<void> initApp()async{
  WidgetsFlutterBinding.ensureInitialized();
  mainContext.config = mainContext.config.clone(
    disableErrorBoundaries: !Constants.isTestRun,
  );

   await Firebase.initializeApp();



   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(

    statusBarColor: Colors.transparent,
    systemNavigationBarColor:Colors.transparent,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  configureDependencies();
  await EasyLocalization.ensureInitialized();
}
