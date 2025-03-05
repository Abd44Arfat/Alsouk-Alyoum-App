import 'package:alsoukalyoum/features/home/views/home_view.dart';
import 'package:alsoukalyoum/features/main_view/views/main_view.dart';
import 'package:alsoukalyoum/features/onboarding/views/onboarding_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => const MainView());

    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());

       case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnboardingView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}