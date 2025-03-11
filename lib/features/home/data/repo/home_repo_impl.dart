import 'package:alsoukalyoum/core/utils/failure.dart';
import 'package:alsoukalyoum/features/Gold/data/data_source/gold_remote_data_source.dart';
import 'package:alsoukalyoum/features/Gold/data/models/gold_model.dart';
import 'package:alsoukalyoum/features/Gold/domain/repo/gold_repo.dart';
import 'package:alsoukalyoum/features/home/data/data_source/home_remote_data_source.dart';
import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
import 'package:alsoukalyoum/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';


class HomeRepoImpl extends HomeRepo { // Fixed class name

  final HomeRemoteDataSourceImpl homeRemoteDataSourceImpl;

  HomeRepoImpl({required this.homeRemoteDataSourceImpl});

  @override
  @override
Future<Either<Failure, TimeResponse>> getCurrenciesTime() async {
  try {
    final timeList = await homeRemoteDataSourceImpl.fetchTimeCurrency();

    final timeResponse = TimeResponse(message: "Success", time: timeList);

    return right(timeResponse);
  } catch (e) {
    if (e is DioError) {
      return left(ServerFailure.fromDiorError(e)); 
    }
    return left(ServerFailure(e.toString()));
  }
}

  @override
  Future<Either<Failure, List<Currency>>> getAllCurrencies()async {
     try {
    final timeList = await homeRemoteDataSourceImpl.fetchAllCurrency();


    return right(timeList);
  } catch (e) {
    if (e is DioError) {
      return left(ServerFailure.fromDiorError(e)); 
    }
    return left(ServerFailure(e.toString()));
  }
  }
}