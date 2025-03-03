import 'dart:developer';

import 'package:alsoukalyoum/core/services/local_notifications_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationsServices {
  static FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  static Future init() async {
    await firebaseMessaging.requestPermission();
    String? token = await firebaseMessaging.getToken();
    log(token ?? 'null');
    FirebaseMessaging.onBackgroundMessage(handlebackgroundMessage);
    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   //showLocalNotification(message);
    //   LocalNotificationService.showBasicNotification(message);
    // });
    handleForegroundMessage();
  }
  static Future<void> handleForegroundMessage() async {
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
       //showLocalNotification(message);
       LocalNotificationService.showBasicNotification(message);
  });
  }
  static Future<void> handlebackgroundMessage(RemoteMessage message) async {
    await Firebase.initializeApp();
    log(message.notification?.title ?? 'null');
  }
}
