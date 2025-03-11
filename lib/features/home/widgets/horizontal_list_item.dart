import 'package:alsoukalyoum/core/utils/app_text_styles.dart';
import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
import 'package:flutter/material.dart';

class HorizontalListItem extends StatelessWidget {
  const HorizontalListItem({
    super.key,
    required this.time,
    required this.selected,
  });

  final TimeModel time;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    // Debug log to verify each time item
    debugPrint('Time Item: ${time.toJson()}');

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? Colors.blue : Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          time.name, // Display the time name
          style: TextStyle(
            color: selected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}