import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:nans/firebase_options.dart';
import 'package:nans/src/core/util/constants.dart';
import 'package:nans/src/features/app/presentation/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';

import 'dependencies.dart';

void main() async{
  await initApp();

     runApp(EasyLocalization(

    supportedLocales: const [
      Locale('en'),
      Locale('ar'),
    ],
    path: 'assets/Translations',


    fallbackLocale:  const Locale('en'),

    child: const App(),

  ));
}

Future<void> initApp()async{
  WidgetsFlutterBinding.ensureInitialized();
  mainContext.config = mainContext.config.clone(
    disableErrorBoundaries: !Constants.isTestRun,
  );

   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform) ;

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
