import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:etloob/dependencies.dart';
import 'package:etloob/src/core/presentation/auto_router.gr.dart';
import 'package:etloob/src/core/presentation/page_arguments/home_page_navigation_arguments.dart';
import 'package:etloob/src/core/util/localization_manager.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

@singleton
class NotificationsManager {
  final String applicationPackageName='merit';
  FlutterLocalNotificationsPlugin? _flutterLocalNotificationsPlugin;

  initFirebaseMessaging(BuildContext context) async {
     getNotification(context);
    FirebaseMessaging messaging = FirebaseMessaging.instance;

      await messaging.requestPermission(alert: true, announcement: false,
     badge: true, carPlay: false, criticalAlert: false, provisional: false,
     sound: true,
      );
      await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
     badge: true,
     sound: true,

     );

      FirebaseMessaging.onMessageOpenedApp.listen((message) {
       handleFCMNotification(context, message);
     });
      FirebaseMessaging.instance.getInitialMessage().then((value) {
           if (value != null) {
       handleFCMNotification(context, value);
      }
   });

    FirebaseMessaging.onMessage.listen((event) {
     String? titleInData = event.data['titleAr'];
     if (titleInData != null) {
     LocalizationManager localizationManager = getIt<LocalizationManager>();
     String title = localizationManager.isEnglishLanguage ? event
        .data['titleEn'] : event.data['titleAr'],
        body = localizationManager.isEnglishLanguage
          ? event.data['bodyEn']
          : event.data['bodyAr'];
    showNotification(title, body, event.data, context);
      }
     else {
       String localizedTitle = event.notification?.title??'';
      String localizedBody = event.notification?.body??'';

       showNotification(localizedTitle, localizedBody, event.data, context);
       }
  });
  }


  Future<FlutterLocalNotificationsPlugin>  getNotification(BuildContext context) async {
    if (_flutterLocalNotificationsPlugin != null) {
      return _flutterLocalNotificationsPlugin!;
    } else {

      const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

      final IOSInitializationSettings initializationSettingsIOS =
      IOSInitializationSettings(
          requestAlertPermission: true,
          requestBadgePermission: true,
          requestSoundPermission: true,
          onDidReceiveLocalNotification:
              (int id, String? title, String? body, String? payload) async {
            showNotification(title??'', body??'', json.decode(payload??'') , context);
          });

      final InitializationSettings initializationSettings =
      InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsIOS,
      );
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
      await _flutterLocalNotificationsPlugin!.initialize(
        initializationSettings,
      );
      return _flutterLocalNotificationsPlugin!;
    }
  }


  Future<void> showNotification(String title, String body, Map payload,BuildContext context,
      {String? sound}) async {
    final noti = await getNotification(context);
    onReceiveNotification(payload,context);

    AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails('$applicationPackageName.com', applicationPackageName, channelDescription: '$applicationPackageName channel',
        importance: Importance.max,
        priority: Priority.high,
        ticker: 'ticker');

    const IOSNotificationDetails iosNotificationDetails=IOSNotificationDetails();
     NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,iOS: iosNotificationDetails);

    await noti.show(0, title, body, platformChannelSpecifics, payload: payload.toString());
  }

   void handleFCMNotification(BuildContext context,RemoteMessage message) {
   Future.delayed(const Duration(seconds:4)).then((value) {
      // final String eventType = message.data['EventType'].toString();

AutoRouter.of(context).push(HomePageRoute(args: HomePageNavigationArguments()));
 });
   }

  void onReceiveNotification(Map data,BuildContext context){
    //final String eventType = data['EventType'].toString();
  }

}
