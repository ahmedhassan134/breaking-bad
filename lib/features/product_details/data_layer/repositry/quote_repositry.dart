import 'package:first/features/product_details/data_layer/model/quote_model.dart';
import 'package:first/features/product_details/data_layer/service/quote_service.dart';

class QuoteRepositry{


  QuoteService quoteService;
  QuoteRepositry(this.quoteService);

  Future<List<QuoteModel>>  getQuote({required String name})async{

    final quote=await quoteService.getQuote(name: name);
    return quote.map((item)=>QuoteModel.fromJson(item)).toList();

  }



}