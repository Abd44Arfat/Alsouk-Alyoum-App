import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
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
        List<TimeModel> times = [];

        if (state is TimeSuccess) {
          times = state.times;
        } else if (state is CurrenciesSuccess) {
          // If needed, get times from another source inside the cubit
          times = context.read<HomeCubit>().timesList; 
        }

        if (times.isNotEmpty) {
          return TimeHorizontalList(times: times);
        } else if (state is TimeFailure || state is CurrenciesFailure) {
          return Center(
            child: Text(state is TimeFailure ? state.errmessage : "No currencies found"),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
