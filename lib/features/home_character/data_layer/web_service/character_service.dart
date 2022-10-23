import 'package:dio/dio.dart';
import 'package:first/core/utils/strings.dart';
import 'package:first/features/home_character/data_layer/model/character_model.dart';

class CharacterService {
  late Dio dio;

  CharacterService() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 20 * 1000,
      receiveTimeout: 20 * 1000,
      receiveDataWhenStatusError: true,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllData() async {
    try {
      Response response = await dio.get('characters');
      return response.data;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
