import 'package:alsoukalyoum/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HorizontalListItem extends StatelessWidget {
  final String title; // Title parameter
  final bool selected; // Selected status parameter

  const HorizontalListItem({
    super.key,
    required this.title,
    required this.selected, // Update the constructor
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: 80, // Set a fixed width for each item
        decoration: BoxDecoration(
          color: selected ? Colors.white : const Color(0xff001019), // Change background based on selected status
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
        child: Center(
          child: Text(
            title, // Use the title parameter
            style: TextStyles.regular13.copyWith(
              color: selected ? Colors.black : Colors.white, // Change text color based on selected status
            ),
          ),
        ),
      ),
    );
  }
}