import 'package:alsoukalyoum/features/calculator/views/widgets/calculator_view_body.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});
static const String routeName = '/calculatorView';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      body: CurrencyConverterScreen(),
    );
  }
}