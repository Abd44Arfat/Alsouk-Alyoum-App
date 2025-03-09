import 'package:alsoukalyoum/features/Gold/presentation/views/gold_view.dart';
import 'package:alsoukalyoum/features/calculator/views/calculator_view.dart';
import 'package:alsoukalyoum/features/calculator/views/widgets/calculator_view_body.dart';
import 'package:alsoukalyoum/features/curreny/views/currency_view.dart';
import 'package:alsoukalyoum/features/curreny/views/widgets/currency_view_body.dart';
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

      
       case CurrencyView.routeName:
      return MaterialPageRoute(builder: (context) => const CurrencyView());

            case GoldView.routeName:
      return MaterialPageRoute(builder: (context) => const GoldView());

      
            case CalculatorView.routeName:
      return MaterialPageRoute(builder: (context) => const  CalculatorView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}