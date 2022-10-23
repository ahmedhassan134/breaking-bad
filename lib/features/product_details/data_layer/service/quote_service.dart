import 'package:dio/dio.dart';
import 'package:first/core/utils/strings.dart';

class QuoteService{
  
  
  late Dio dio;
  
  QuoteService(){
    BaseOptions options=BaseOptions(
      baseUrl: baseUrl,
      receiveTimeout:  20 * 1000,
      connectTimeout: 20 * 1000,
      
    );
    dio=Dio(options);
  }
  
  
  Future<List<dynamic>>  getQuote({required String name})async{
    
    try{
      
      Response response =await dio.get('quote',queryParameters: {'author':name});
      return response.data;
      
      
      
    }catch(e){
      print(e.toString());
      return [];
    }
  }
  
  
  
  
  
  
  
}