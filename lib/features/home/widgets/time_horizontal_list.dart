import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
import 'package:alsoukalyoum/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'horizontal_list_item.dart'; // Adjust the import based on your file structure
class TimeHorizontalList extends StatefulWidget {
  const TimeHorizontalList({super.key, required this.times});
  final List<TimeModel> times;

  @override
  _TimeHorizontalListState createState() => _TimeHorizontalListState();
}

class _TimeHorizontalListState extends State<TimeHorizontalList> {
  int _selectedIndex = 0; // Default selection

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.times.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
     


                setState(() {
                  _selectedIndex = index; // Update selected index
                });

                // Call to filter currencies based on selected time ID
   context.read<HomeCubit>().getCurrenciesList(currencyId: widget.times[index].timeId);
            
            },
            child: HorizontalListItem(
              times: widget.times[index],
              selected: _selectedIndex == index,
            ),
          );
        },
      ),
    );
  }
}