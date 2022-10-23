class QuoteModel{

  late String quote;

  QuoteModel.fromJson(Map<String,dynamic>data){

    quote=data['quote'];
  }
}