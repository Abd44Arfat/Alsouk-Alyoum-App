import 'package:alsoukalyoum/core/utils/failure.dart';
import 'package:alsoukalyoum/features/Gold/data/models/gold_model.dart';
import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
import 'package:dartz/dartz.dart';


abstract class HomeRepo{

  Future<Either<Failure, TimeResponse>> getCurrenciesTime();
  Future<Either<Failure, List<Currency>>> getAllCurrencies();

}