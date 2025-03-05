import 'package:alsoukalyoum/features/main_view/widgets/bottom_nav_item.dart';
import 'package:alsoukalyoum/features/main_view/widgets/bottom_navigation_bar_entity.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key, required this.onItemTapped});
  final ValueChanged<int> onItemTapped;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Use full width
      height: 85,
      decoration: const ShapeDecoration(
        color: Color(0xff00080D),
        shape: RoundedRectangleBorder(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, // Distribute items evenly
        children: bottomNavigationBarItems.asMap().entries.map((e) {
          var index = e.key;
          var entity = e.value;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                widget.onItemTapped(index);
              });
            },
            child: Container(
              width: 75, // Set a fixed width for each item
            
              child: Center( // Center the item content
                child: NaivgationBarItem(
                  isSelected: selectedIndex == index,
                  bottomNavigationBarEntity: entity,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}