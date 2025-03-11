import 'dart:ffi';

import 'package:alsoukalyoum/core/helper_fuctions/extentions.dart';
import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
import 'package:alsoukalyoum/features/home/domain/repo/home_repo.dart';
import 'package:alsoukalyoum/features/home/presentation/manager/home_cubit/home_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial());

  final HomeRepo homeRepo;
  List<TimeModel> timesList = [];
  List<Currency> filteredCurrencies = [];

  Future<void> getCurrencies() async {
    emit(TimeLoading()); // Emit loading state

    final result = await homeRepo.getCurrenciesTime();

    result.fold(
      (failure) => emit(TimeFailure(errmessage: failure.message)), // Emit failure state
      (timeResponsemodel) {
        timesList = timeResponsemodel.time ?? [];
        emit(TimeSuccess(times: timesList)); // Emit success state with times

        // Fetch currencies for the default time ID (1) on the first call
        getCurrenciesList(currencyId: 1);
      },
    );
  }

  void getCurrenciesList({required int currencyId}) {
    debugPrint('Selected Time ID: $currencyId');

    filteredCurrencies = getCurrencyListByTimeId(currencyId);

    if (!filteredCurrencies.isNullOrEmpty()) {
      debugPrint('Filtered Currencies: ${filteredCurrencies.map((e) => e.toJson()).toList()}');
      emit(CurrenciesSuccess(currenciesList: filteredCurrencies)); // Emit success state with currencies
    } else {
      debugPrint('No currencies found for Time ID: $currencyId');
      emit(CurrenciesFailure(errmessage: 'No currencies found')); // Emit failure state
    }
  }

  List<Currency> getCurrencyListByTimeId(int timeId) {
    return timesList.firstWhere((element) => element.timeId == timeId).currencies;
  }
}