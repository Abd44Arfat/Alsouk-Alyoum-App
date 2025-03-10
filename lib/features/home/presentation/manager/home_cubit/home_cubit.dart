import 'dart:ffi';

import 'package:alsoukalyoum/core/helper_fuctions/extentions.dart';
import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
import 'package:alsoukalyoum/features/home/domain/repo/home_repo.dart';
import 'package:alsoukalyoum/features/home/presentation/manager/home_cubit/home_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial());

  final HomeRepo homeRepo;
  List<TimeModel> timesList = [];

  Future<void> getCurrencies() async {
    emit(TimeLoading());

    final result = await homeRepo.getCurrenciesTime();

    result.fold(
      (failure) => emit(TimeFailure(errmessage: failure.message)),
      (timeResponsemodel) {
        timesList = timeResponsemodel.time ?? [];

        // Fetch currencies with ID = 1 on the first call.
    
        getCurrenciesList(currencyId:  
        
        timeResponsemodel.time!.first.timeId);

        emit(TimeSuccess(specializationCurrencies: timeResponsemodel.time));
      },
    );
  }

  void getCurrenciesList({required int currencyId}) {
    debugPrint('Selected Time ID: $currencyId');
    List<Currency> currencyList = getCurrencyListByTimeId(currencyId);

if(!currencyList.isNullOrEmpty()){
    emit(CurrenciesSuccess(currenciesList: currencyList));
}else{
  emit(CurrenciesFailure(errmessage: 'No currencies found'));
}
}
getCurrencyListByTimeId(int timeId) {

  return timesList.firstWhere((element) => element.timeId == timeId).currencies;
}}