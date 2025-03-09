import 'package:alsoukalyoum/features/Gold/data/models/gold_model.dart';
import 'package:alsoukalyoum/features/Gold/presentation/views/widgets/gold_list_item.dart';

import 'package:flutter/material.dart';

class GoldList extends StatelessWidget {
  const GoldList({super.key, required this.golds});
final List<Gold>golds;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        
          return GoldItem(gold: golds[index],);
        },
        itemCount: golds.length, // Number of items in the list
      );
   
  }
}