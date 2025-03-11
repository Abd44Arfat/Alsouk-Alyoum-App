import 'package:alsoukalyoum/core/helper_fuctions/get_it_service.dart';
import 'package:alsoukalyoum/features/curreny/presentation/manager/all_currencies/allcurrencyies_cubit.dart';
import 'package:alsoukalyoum/features/curreny/presentation/views/widgets/currency_view_body.dart';
import 'package:alsoukalyoum/features/home/domain/repo/home_repo.dart';
import 'package:alsoukalyoum/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CurrencyView extends StatelessWidget {
  const CurrencyView({super.key});
  static const String routeName = '/currencyView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AllcurrencyiesCubit(getIt.get<HomeRepo>()), // Provide HomeCubit
        child: CurrencyViewBody(),
      ),
    );
  }
}
