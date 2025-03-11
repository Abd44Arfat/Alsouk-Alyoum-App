part of 'allcurrencyies_cubit.dart';

@immutable
sealed class AllcurrencyiesState {}

final class AllcurrencyiesInitial extends AllcurrencyiesState {}
final class AllcurrencyiesLoading extends AllcurrencyiesState {}
final class AllcurrencyiesSuccess extends AllcurrencyiesState {

final List<Currency> currenciesList;

  AllcurrencyiesSuccess({required this.currenciesList});

}
final class AllcurrencyiesFailure extends AllcurrencyiesState {

final String errmessage;

  AllcurrencyiesFailure({required this.errmessage});

}

