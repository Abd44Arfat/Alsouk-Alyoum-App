import 'package:alsoukalyoum/core/utils/app_text_styles.dart';
import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
import 'package:flutter/material.dart';

class HorizontalListItem extends StatelessWidget {

  final bool selected; // Selected status parameter
final TimeModel times;
  const HorizontalListItem({
    super.key,

    required this.selected, required this.times, // Update the constructor
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
            times.name, // Use the title parameter
            style: TextStyles.regular13.copyWith(
              color: selected ? Colors.black : Colors.white, // Change text color based on selected status
            ),
          ),
        ),
      ),
    );
  }
}