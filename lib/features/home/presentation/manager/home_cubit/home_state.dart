part of 'home_cubit.dart';

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

//list of currencies
final class CurrenciesSuccess extends HomeState {}
final class CurrenciesFailure extends HomeState {}




