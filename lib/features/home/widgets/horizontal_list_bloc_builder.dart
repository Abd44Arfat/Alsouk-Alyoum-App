import 'package:alsoukalyoum/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:alsoukalyoum/features/home/presentation/manager/home_cubit/home_state.dart';
import 'package:alsoukalyoum/features/home/widgets/time_horizontal_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HorizontalListBlocBuilder extends StatelessWidget {
  const HorizontalListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is TimeSuccess) {
          // Debug log to verify the timesList
          debugPrint('Times List in BlocBuilder: ${state.times.map((e) => e.toJson()).toList()}');
          return TimeHorizontalList(times: state.times); // Pass times to the horizontal list
        } else if (state is TimeFailure) {
          return Center(
            child: Text(state.errmessage), // Show error message
          );
        }
        return const Center(child: CircularProgressIndicator()); // Show loading indicator
      },
    );
  }
}