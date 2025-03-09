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
  Future<Either<Failure, List<TimeModel>>> getCurrenciesTime() async { // Made this method async
    try {
      // Call the fetchCharactersList method on the instance
      final goldList = await homeRemoteDataSourceImpl.fetchTimeCurrency();
      return right(goldList); // Return the successful response
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e)); // Handle DioError
      }
      return left(ServerFailure(e.toString())); // Handle other exceptions
    }
  }
}