import 'package:dio/dio.dart';
import 'package:first/core/service/api_service.dart';
import 'package:first/core/utils/strings.dart';
import 'package:first/features/product_details/data_layer/model/quote_model.dart';

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

  Future<List<dynamic>>  getQuote2({required String name})async{

   QuoteModel ?   quote ;
 NetworkRequest networkRequest=   NetworkRequest(path: "quote",data: NetworkRequestBody.json({"name":name}),type: NetworkRequestType.GET);

final networkResponse=await networkService.execute( networkRequest,QuoteModel.fromJson);



networkResponse.maybeWhen(ok: (data){
  quote=data;
  return quote;
},orElse: (){});




  }

  
  
  
  
  
}