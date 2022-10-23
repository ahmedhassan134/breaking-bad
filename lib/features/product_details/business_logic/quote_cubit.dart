import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data_layer/model/quote_model.dart';
import '../data_layer/repositry/quote_repositry.dart';

part 'quote_state.dart';

class QuoteCubit extends Cubit<QuoteState> {
  QuoteCubit(this.quoteRepositry) : super(QuoteInitial());




  final QuoteRepositry quoteRepositry;


  void showQuote({required String name}){
    quoteRepositry.getQuote(name: name).then((value) {

      emit(QuoteLoaded(value));
    }
    );


  }
}
