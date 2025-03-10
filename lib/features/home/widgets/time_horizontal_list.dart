import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
import 'package:flutter/material.dart';
import 'horizontal_list_item.dart'; // Adjust the import based on your file structure

class TimeHorizontalList extends StatefulWidget {
  const TimeHorizontalList({super.key, required this.times});
final List<TimeModel>times;
  @override
  _TimeHorizontalListState createState() => _TimeHorizontalListState();
}

class _TimeHorizontalListState extends State<TimeHorizontalList> {
  int _selectedIndex = 0; // Default selected index (first item)

  @override
  Widget build(BuildContext context) {


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
              times:  widget.times[index], // Pass the title
              selected: _selectedIndex == index, // Check if this item is selected
            ),
          );
        },
        itemCount: widget.times.length, // Use the length of the titles list
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}