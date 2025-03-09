import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
import 'package:alsoukalyoum/features/home/widgets/vertical_list_item.dart';
import 'package:flutter/material.dart';

class VerticalCurrencyList extends StatelessWidget {
  const VerticalCurrencyList({super.key, required this.currencies});

  final List<TimeModel> currencies;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return CurrencyItem(currencyTime: currencies[index]); // Pass the correct parameter
        },
        childCount: currencies.length, // Number of items in the list
      ),
    );
  }
}
