import 'package:alsoukalyoum/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:alsoukalyoum/features/home/presentation/manager/home_cubit/home_state.dart';
import 'package:alsoukalyoum/features/home/widgets/vertical_currency_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerticalListBlocBuilder extends StatelessWidget {
  const VerticalListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is TimeSuccess) {
          return VerticalCurrencyList(currencies: state.specializationCurrencies);
        } else if (state is TimeFailure) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text('Failed to fetch times'),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(), // Better loading indicator
            ),
          );
        }
      },
    );
  }
}
