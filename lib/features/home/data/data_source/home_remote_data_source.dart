import 'package:alsoukalyoum/core/helper_fuctions/Api_services.dart';
import 'package:alsoukalyoum/core/utils/constants.dart';
import 'package:alsoukalyoum/features/Gold/data/models/gold_model.dart';
import 'package:alsoukalyoum/features/home/data/models/home_model.dart';
import 'package:dio/dio.dart';


abstract class HomeRemoteDataSource {
  Future<List<TimeModel>> fetchTimeCurrency(); // Fixed method name
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final DioClient dioClient;

  HomeRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<List<TimeModel>> fetchTimeCurrency() async {
    try {
      // Await the response from the API
      final response = await dioClient.get(ApiUrls.getHomeList);

      
      if (response.statusCode == 200) {
        
        return getcurrencies(response.data); 
      } else {
        throw Exception('Failed to load Golds');
      }
    } catch (e) {
      throw Exception('Error fetching Golds: $e'); 
    }
  }

  List<TimeModel> getcurrencies(Map<String, dynamic> data) {
    List<TimeModel> Currencies = []; 
    for (var curenciesMap in data['time']) {
      Currencies.add(TimeModel.fromMap(curenciesMap)); 
    }
    return Currencies;
  }
}