import 'package:alsoukalyoum/features/curreny/presentation/views/widgets/currrency_list_item.dart';
import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
import 'package:flutter/material.dart';

class CurrencyList extends StatelessWidget {
  const CurrencyList({super.key, required this.currencies});

  final List<Currency> currencies;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return CurrencyItem(currency: currencies[index]); // Pass the correct parameter
        },
        childCount: currencies.length, // Number of items in the list
      ),
    );
  }
}
