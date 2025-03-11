import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
import 'package:meta/meta.dart';
@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class TimeLoading extends HomeState {}

final class TimeSuccess extends HomeState {
  final List<TimeModel> times;

  TimeSuccess({required this.times});
}

final class TimeFailure extends HomeState {
  final String errmessage;

  TimeFailure({required this.errmessage});
}

final class CurrenciesSuccess extends HomeState {
  final List<Currency> currenciesList;

  CurrenciesSuccess({required this.currenciesList});
}

final class CurrenciesFailure extends HomeState {
  final String errmessage;

  CurrenciesFailure({required this.errmessage});
}