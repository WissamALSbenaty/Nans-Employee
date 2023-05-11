
import 'dart:convert';

import 'package:nans/dependencies.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/util/localization_manager.dart';
import 'package:nans/src/features/app/presentation/pages/app.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';


void handleNotificationData(String payload){

  String cleanData = payload.replaceAll("{", "").replaceAll("}", "").replaceAll(r'\', "").replaceAll(r'"',"");
  List<String> keyValueStrings = cleanData.split(",");

  Map<String, dynamic> parsedData = {};

  for (String keyValueString in keyValueStrings) {
    List<String> keyValueList = keyValueString.split(":");

    String key = keyValueList[0].trim();
    dynamic value = keyValueList[1].trim();

    parsedData[key] = value;
  }
  /*  if(int.tryParse( parsedData['OrderId'])!=null){
      int orderId=int.parse( parsedData['OrderId']);

      appRouter.push(OrderDetailsRoute(args: OrderDetailsPageArgument(orderId: orderId)));
    }*/

}

@singleton
class NotificationsManager {
  FlutterLocalNotificationsPlugin? _flutterLocalNotificationsPlugin;

  initFirebaseMessaging() async {
    getNotification();
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      handleFCMNotification( message);
    });
    FirebaseMessaging.instance.getInitialMessage().then((value) {
      if (value != null) {
        handleFCMNotification( value);
      }
    });

    FirebaseMessaging.onMessage.listen((event) {
      String? titleInData = event.data['titleAr'];
      if (titleInData != null) {
        LocalizationManager localizationManager = getIt<LocalizationManager>();
        String title = localizationManager.isEnglishLanguage
            ? event.data['titleEn']
            : event.data['titleAr'],
            body = localizationManager.isEnglishLanguage
                ? event.data['bodyEn']
                : event.data['bodyAr'];
        showNotification(title, body, event.data);
      } else {
        String localizedTitle = '${event.notification?.title}';
        String localizedBody = '${event.notification?.body}';

        showNotification(localizedTitle, localizedBody, event.data);
      }
    });
  }

  Future<FlutterLocalNotificationsPlugin> getNotification() async {
    if (_flutterLocalNotificationsPlugin != null) {
      return _flutterLocalNotificationsPlugin!;
    } else {
      const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');

      final DarwinInitializationSettings initializationSettingsDarwin =
      DarwinInitializationSettings(
          requestAlertPermission: true,
          requestBadgePermission: true,
          requestSoundPermission: true,
          onDidReceiveLocalNotification:
              (int id, String? title, String? body, String? payload) async {
            showNotification(title ?? '', body ?? '',
                json.decode(payload ?? ''));
          });

      final InitializationSettings initializationSettings =
      InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsDarwin,
      );
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
      await _flutterLocalNotificationsPlugin!.initialize(
        initializationSettings,
      );
      return _flutterLocalNotificationsPlugin!;
    }
  }

  Future<void> showNotification(String title, String body, Map payload,) async {
    final noti = await getNotification();

    const AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails('nans.com', 'nans',
        channelDescription: 'nans channel',
        importance: Importance.max,
        priority: Priority.high,
        ticker: 'ticker');

    const DarwinNotificationDetails iosNotificationDetails =
    DarwinNotificationDetails();
    const NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics, iOS: iosNotificationDetails);

    await noti.show(0, title, body, platformChannelSpecifics,
        payload: payload.toString());
  }

  void handleFCMNotification(  RemoteMessage message) {
    Future.delayed(const Duration(seconds: 4)).then((value) {
      // final String eventType = message.data['EventType'].toString();

      appRouter.push(HomeRoute());
    });
  }
}

