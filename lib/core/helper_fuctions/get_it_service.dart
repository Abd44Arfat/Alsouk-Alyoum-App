import 'package:alsoukalyoum/core/helper_fuctions/Api_services.dart';
import 'package:alsoukalyoum/features/Gold/data/data_source/gold_remote_data_source.dart';
import 'package:alsoukalyoum/features/Gold/data/repo/gold_repo_impl.dart';
import 'package:alsoukalyoum/features/Gold/domain/repo/gold_repo.dart';
import 'package:alsoukalyoum/features/home/data/data_source/home_remote_data_source.dart';
import 'package:alsoukalyoum/features/home/data/repo/home_repo_impl.dart';
import 'package:alsoukalyoum/features/home/domain/repo/home_repo.dart';
import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // Register DioClient as a singleton
  getIt.registerSingleton<DioClient>(DioClient());

  // Register CharacterRemoteDataSourceImpl as a singleton
  getIt.registerSingleton<GoldRemoteDataSourceImpl>(
    GoldRemoteDataSourceImpl(dioClient: getIt<DioClient>()),
  );

  // Register CharacterRepoImpl as a singleton
  getIt.registerSingleton<GoldRepo>(
    GoldRepoImpl(goldRemoteDataSourceImpl: getIt<GoldRemoteDataSourceImpl>()),
  );


  getIt.registerSingleton<HomeRemoteDataSourceImpl>(
    HomeRemoteDataSourceImpl(dioClient: getIt<DioClient>()),
  );


 getIt.registerSingleton<HomeRepo>(
    HomeRepoImpl(homeRemoteDataSourceImpl: getIt<HomeRemoteDataSourceImpl>()),
  );

}