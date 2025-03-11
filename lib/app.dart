import 'package:alsoukalyoum/core/helper_fuctions/on_generate_routes.dart';
import 'package:alsoukalyoum/features/main_view/views/main_view.dart';
import 'package:alsoukalyoum/features/onboarding/views/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Cairo',
      ),
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'), // Set Arabic as default locale
      supportedLocales: const [
        Locale('ar'), // Arabic
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl, // Force RTL for the entire app
          child: child!,
        );
      },
      initialRoute: OnboardingView.routeName,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
