import 'package:alsoukalyoum/features/Gold/presentation/views/widgets/gold_list_item.dart';

import 'package:flutter/material.dart';

class GoldList extends StatelessWidget {
  const GoldList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        
          return GoldItem();
        },
        itemCount: 5, // Number of items in the list
      );
   
  }
}