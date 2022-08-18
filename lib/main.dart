import 'dart:async';
import 'dart:isolate';

import 'package:easy_localization/easy_localization.dart';
import 'package:etloob/src/features/app/presentation/pages/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dependencies.dart';

void main() async{

  await initApp();
   runZonedGuarded(() async {

       FlutterError.onError=FirebaseCrashlytics.instance.recordFlutterFatalError;

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
     FirebaseCrashlytics.instance.recordError(object, stackTracer,fatal: true);
    });
}

Future<void> initApp()async{
  WidgetsFlutterBinding.ensureInitialized();


   await Firebase.initializeApp();

  Isolate.current.addErrorListener(RawReceivePort((pair) async {
    final List<dynamic> errorAndStacktrace = pair;
    await FirebaseCrashlytics.instance.recordError(
      errorAndStacktrace.first,
      errorAndStacktrace.last,
    );
  }).sendPort);

   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(

    statusBarColor: Colors.white,
    systemNavigationBarColor:Colors.white,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  configureDependencies();
  await EasyLocalization.ensureInitialized();
}
