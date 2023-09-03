
import 'dart:convert';
import 'dart:math';

import 'package:nans/dependencies.dart';
import 'package:nans/src/core/util/enums.dart';
import 'package:nans/src/core/util/localization_manager.dart';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';



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
    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );

/*    RemoteMessage? initialMessage= await  FirebaseMessaging.instance.getInitialMessage();
      if (initialMessage != null) {
        print('Wiso onMessage');
        handleNotificationData(initialMessage.data.toString());
      }*/

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print('Wiso onMessageOpendApp');
      handleNotificationData(message.data.toString());
    });

    FirebaseMessaging.onMessage.listen((event) {
      print('Wiso onMessage');
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

  Future<void> getNotification() async {
    if (_flutterLocalNotificationsPlugin != null) {
      return ;
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
          initializationSettings,onDidReceiveNotificationResponse: (value)=>handleNotificationData(value.payload??"")
      );
      return ;
    }
  }

  Future<void> showNotification(String title, String body, Map payload,) async {

    AndroidNotificationChannel channel=AndroidNotificationChannel(Random.secure().nextInt(10000).toString(), 'etloob');

    AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails(channel.id, channel.name,
        channelDescription: 'etloob channel',
        importance: Importance.max,
        priority: Priority.high,
        ticker: 'ticker');

    const DarwinNotificationDetails iosNotificationDetails =
    DarwinNotificationDetails();
    NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics, iOS: iosNotificationDetails);

    await _flutterLocalNotificationsPlugin?.show(0, title, body, platformChannelSpecifics,
        payload: payload.toString());
  }


  void handleNotificationData(String payload){
    print('Wiso payload $payload');

    String cleanData = payload.replaceAll("{", "").replaceAll("}", "").replaceAll(r'\', "").replaceAll(r'"',"");
    List<String> keyValueStrings = cleanData.split(",");

    Map<String, dynamic> parsedData = {};

    for (String keyValueString in keyValueStrings) {
      List<String> keyValueList = keyValueString.split(":");

      String key = keyValueList[0].trim();
      dynamic value = keyValueList[1].trim();

      parsedData[key] = value;
    }

    print('Wiso Start here $parsedData');
 /*   if(int.tryParse( parsedData['OrderId']??'')!=null){
      int orderId=int.parse( parsedData['OrderId']??'');
      appRouter.push(OrderDetailsPageRoute(args: OrderDetailsPageArgument(orderId: orderId)));
      return;
    }
    else if (int.tryParse( parsedData['ProductId']??'')!=null){
      int productId=int.parse( parsedData['ProductId']??'');
      appRouter.push(ProductDetailsPageRoute(args: ProductDetailsPageArguments(productId: productId)));
      return;
    }
    else if (int.tryParse( parsedData['CategoryId']??'')!=null){
      int categoryId=int.parse( parsedData['CategoryId']??'');
      appRouter.push( ChipDetailsPageRoute(chipType: ChipType.category, chipId:  categoryId,));
      return;
    }
    else if (int.tryParse( parsedData['BrandId']??'')!=null){
      int brandId=int.parse( parsedData['BrandId']??'');
      appRouter.push( ChipDetailsPageRoute(chipType: ChipType.brand, chipId:  brandId,));
      return;
    }
    else if (int.tryParse( parsedData['VendorId']??'')!=null){
      int vendorId=int.parse( parsedData['VendorId']??'');
      appRouter.push( ChipDetailsPageRoute(chipType: ChipType.vendor, chipId:  vendorId,));
      return;
    }*/
    print('Wiso Finish here');
  }
}

