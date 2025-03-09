import 'package:alsoukalyoum/core/utils/failure.dart';
import 'package:alsoukalyoum/features/Gold/data/data_source/gold_remote_data_source.dart';
import 'package:alsoukalyoum/features/Gold/data/models/gold_model.dart';
import 'package:alsoukalyoum/features/Gold/domain/repo/gold_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';


class GoldRepoImpl extends GoldRepo { // Fixed class name

  final GoldRemoteDataSourceImpl goldRemoteDataSourceImpl;

  GoldRepoImpl({required this.goldRemoteDataSourceImpl});

  @override
  Future<Either<Failure, List<Gold>>> fetchGoldList() async { // Made this method async
    try {
      // Call the fetchCharactersList method on the instance
      final goldList = await goldRemoteDataSourceImpl.fetchGoldList();
      return right(goldList); // Return the successful response
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDiorError(e)); // Handle DioError
      }
      return left(ServerFailure(e.toString())); // Handle other exceptions
    }
  }
}