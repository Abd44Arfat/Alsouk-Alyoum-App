import 'package:alsoukalyoum/app.dart';
import 'package:alsoukalyoum/core/services/local_notifications_service.dart';
import 'package:alsoukalyoum/core/services/push_notifications_services.dart';
import 'package:alsoukalyoum/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


 await Future.wait([

  PushNotificationsServices.init(),
  LocalNotificationService.init(),
  ]);

  runApp(const MyApp());
}
