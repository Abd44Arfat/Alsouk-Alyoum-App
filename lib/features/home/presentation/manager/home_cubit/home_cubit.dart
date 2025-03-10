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

  Future<void> getCurrencies() async {
    emit(TimeLoading());

    final result = await homeRepo.getCurrenciesTime();

    result.fold(
      (failure) => emit(TimeFailure(errmessage: failure.message)),
      (timeResponsemodel) {
        timesList = timeResponsemodel.time??[];
         getCurrenciesList(currencyId: timesList.first.timeId, );

        emit(TimeSuccess(specializationCurrencies: timeResponsemodel.time));
      },
    );
  }

void getCurrenciesList({required int currencyId}) {
  debugPrint('Filtering currencies for Time ID: $currencyId');

  List<Currency> filteredCurrencies = timesList
      .firstWhere(
        (element) => element.id == currencyId, 
        orElse: () => TimeModel(id: "cd", name: '', currencies: [], timeId: 5), // Prevents crash
      )
      .currencies;

  if (filteredCurrencies.isNotEmpty) {
    emit(CurrenciesSuccess(currenciesList: filteredCurrencies));
  } else {
    emit(CurrenciesFailure(errmessage: 'No Currencies Found for this Time ID'));
  }
}


}