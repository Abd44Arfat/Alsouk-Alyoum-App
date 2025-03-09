import 'package:alsoukalyoum/core/helper_fuctions/Api_services.dart';
import 'package:alsoukalyoum/core/utils/constants.dart';
import 'package:alsoukalyoum/features/Gold/data/models/gold_model.dart';
import 'package:dio/dio.dart';


abstract class GoldRemoteDataSource {
  Future<List<Gold>> fetchGoldList(); // Fixed method name
}

class GoldRemoteDataSourceImpl extends GoldRemoteDataSource {
  final DioClient dioClient;

  GoldRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<List<Gold>> fetchGoldList() async {
    try {
      // Await the response from the API
      final response = await dioClient.get(ApiUrls.getGoldList);

      
      if (response.statusCode == 200) {
        
        return getGolds(response.data); 
      } else {
        throw Exception('Failed to load Golds');
      }
    } catch (e) {
      throw Exception('Error fetching Golds: $e'); 
    }
  }

  List<Gold> getGolds(Map<String, dynamic> data) {
    List<Gold> characters = []; 
    for (var characterMap in data['gold']) {
      characters.add(Gold.fromMap(characterMap)); 
    }
    return characters;
  }
}