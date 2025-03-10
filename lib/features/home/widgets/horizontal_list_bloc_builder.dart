import 'package:alsoukalyoum/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:alsoukalyoum/features/home/presentation/manager/home_cubit/home_state.dart';
import 'package:alsoukalyoum/features/home/widgets/time_horizontal_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HorizontalListBlocBuilder extends StatefulWidget {
  const HorizontalListBlocBuilder({super.key});

  @override
  State<HorizontalListBlocBuilder> createState() => _HorizontalListBlocBuilderState();
}

class _HorizontalListBlocBuilderState extends State<HorizontalListBlocBuilder> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is TimeSuccess) {
          return TimeHorizontalList(times: state.specializationCurrencies);
        } else if (state is TimeFailure) {
          return const Center(
            child: Text('Failed to fetch times'),
          );
        } else if (state is TimeLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return const Center(child: CircularProgressIndicator()); // Default loading state
      },
    );
  }
}