import 'package:alsoukalyoum/core/helper_fuctions/Api_services.dart';
import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // Register DioClient as a singleton
  getIt.registerSingleton<DioClient>(DioClient());

  // Register CharacterRemoteDataSourceImpl as a singleton
  // getIt.registerSingleton<CharacterRemoteDataSourceImpl>(
  //   CharacterRemoteDataSourceImpl(dioClient: getIt<DioClient>()),
  // );

  // Register CharacterRepoImpl as a singleton
  // getIt.registerSingleton<CharchterRepo>(
  //   CharacterRepoImpl(characterRemoteDataSourceImpl: getIt<CharacterRemoteDataSourceImpl>()),
  // );
}