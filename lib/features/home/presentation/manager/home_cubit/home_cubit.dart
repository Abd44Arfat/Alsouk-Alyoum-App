import 'dart:ffi';

import 'package:alsoukalyoum/core/helper_fuctions/extentions.dart';
import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
import 'package:alsoukalyoum/features/home/domain/repo/home_repo.dart';
import 'package:alsoukalyoum/features/home/presentation/manager/home_cubit/home_state.dart';
import 'package:bloc/bloc.dart';



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

timesList=timeResponsemodel.time??[];

 
        emit(TimeSuccess(specializationCurrencies: timeResponsemodel.time));
      },
    );
  }

void getCurrenciesList({required int currencyId}) {
  // Define the helper function first
  List<Currency> filterCurrenciesListByTime( currencyId) {
    return timesList
        .firstWhere(
          (element) => element.id == currencyId, 
        )
        .currencies;
  }

  // Call the helper function after it's defined
  List<Currency> currenciesList = filterCurrenciesListByTime(currencyId);

  if (currenciesList.isNotEmpty) {
    emit(CurrenciesSuccess(currenciesList: currenciesList));
  } else {
    emit(CurrenciesFailure(errmessage: 'No Currencies Found'));
  }
}

}