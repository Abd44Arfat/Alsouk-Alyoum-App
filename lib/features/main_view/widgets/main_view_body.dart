import 'package:alsoukalyoum/features/Gold/presentation/views/gold_view.dart';
import 'package:alsoukalyoum/features/calculator/views/calculator_view.dart';
import 'package:alsoukalyoum/features/curreny/views/currency_view.dart';
import 'package:alsoukalyoum/features/home/views/home_view.dart';
import 'package:flutter/material.dart';


class MainViewBody extends StatelessWidget {
  const MainViewBody({
    super.key,
    required this.currentViewIndex,
  });

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentViewIndex,
      children: const [
        HomeView(),
       CurrencyView(),
        GoldView(),
        CalculatorView(),

       
      ],
    );
  }
}