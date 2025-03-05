import 'package:flutter/material.dart';
import 'horizontal_list_item.dart'; // Adjust the import based on your file structure

class TimeHorizontalList extends StatefulWidget {
  const TimeHorizontalList({super.key});

  @override
  _TimeHorizontalListState createState() => _TimeHorizontalListState();
}

class _TimeHorizontalListState extends State<TimeHorizontalList> {
  int _selectedIndex = 0; // Default selected index (first item)

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      'اخر ساعة',
      '24 ساعة',
      '48 ساعة',
      '7 أيام',
      '14 يوم',
      '30 يوم',
    ]; // List of different titles

    return SizedBox(
      height: 40, // Set a fixed height for the horizontal list
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index; // Update the selected index
              });
            },
            child: HorizontalListItem(
              title: titles[index], // Pass the title
              selected: _selectedIndex == index, // Check if this item is selected
            ),
          );
        },
        itemCount: titles.length, // Use the length of the titles list
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}