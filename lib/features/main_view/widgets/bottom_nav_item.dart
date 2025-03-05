import 'package:alsoukalyoum/features/main_view/widgets/active_item.dart';
import 'package:alsoukalyoum/features/main_view/widgets/bottom_navigation_bar_entity.dart';
import 'package:flutter/material.dart';


class NaivgationBarItem extends StatelessWidget {
  const NaivgationBarItem(
      {super.key,
      required this.isSelected,
      required this.bottomNavigationBarEntity});

  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            image: bottomNavigationBarEntity.activeImage,
            text: bottomNavigationBarEntity.name,
          )
        : InActiveItem(
            image: bottomNavigationBarEntity.inActiveImage,
             text: bottomNavigationBarEntity.name,
          );
  }
}