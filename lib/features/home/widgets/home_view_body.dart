import 'package:alsoukalyoum/core/widgets/custom_stack.dart';
import 'package:alsoukalyoum/features/home/widgets/custom_chart.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomStack(
child: Column(
children: [
  
  CurrencyChart()],

),
     
    );
       
  }
}