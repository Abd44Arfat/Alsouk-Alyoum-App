import 'package:alsoukalyoum/features/home/widgets/horizontal_list_item.dart';
import 'package:alsoukalyoum/features/home/widgets/vertical_list_item.dart';
import 'package:flutter/material.dart';

class VerticalCurrencyList extends StatelessWidget {
  const VerticalCurrencyList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return CurrencyItem();
        },
        childCount: 10, // Number of items in the list
      ),
    );
  }
}