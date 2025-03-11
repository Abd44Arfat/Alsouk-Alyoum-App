import 'package:alsoukalyoum/features/curreny/presentation/manager/all_currencies/allcurrencyies_cubit.dart';
import 'package:alsoukalyoum/features/curreny/presentation/views/widgets/currency_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllCurrenciesBlocBuilder extends StatelessWidget {
  const AllCurrenciesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllcurrencyiesCubit, AllcurrencyiesState>(
      builder: (context, state) {
        if (state is AllcurrencyiesSuccess) {
          return CurrencyList(currencies: state.currenciesList);
        } else if (state is AllcurrencyiesFailure) {
          return SliverToBoxAdapter( // Wrap non-sliver widgets inside this
            child: Center(
              child: Text(state.errmessage),
            ),
          );
        } else {
          return SliverToBoxAdapter( // Wrap loader inside this too
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
