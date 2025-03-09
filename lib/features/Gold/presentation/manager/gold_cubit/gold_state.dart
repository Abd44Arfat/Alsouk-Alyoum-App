part of 'gold_cubit.dart';

@immutable
sealed class GoldState {}

final class GoldInitial extends GoldState {}
final class GoldLoading extends GoldState {}
final class GoldSuccess extends GoldState {

final List<Gold> golds;

  GoldSuccess({required this.golds});

  

}
final class GoldFailure extends GoldState {

final String errmessage;

  GoldFailure({required this.errmessage});

}
