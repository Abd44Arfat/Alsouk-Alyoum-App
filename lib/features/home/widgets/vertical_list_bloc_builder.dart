import 'package:alsoukalyoum/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:alsoukalyoum/features/home/presentation/manager/home_cubit/home_state.dart';
import 'package:alsoukalyoum/features/home/widgets/vertical_currency_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';class VerticalListBlocBuilder extends StatelessWidget {
  const VerticalListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is CurrenciesSuccess) {
          debugPrint("Currencies Updated: ${state.currenciesList.length}");
          return VerticalCurrencyList(currencies: state.currenciesList);
        } else if (state is CurrenciesFailure) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text('No currencies found for the selected time'),
            ),
          );
        }
        return const SliverToBoxAdapter(); // Return empty widget if no state matches
      },
    );
  }
}