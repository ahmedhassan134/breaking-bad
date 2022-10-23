part of 'quote_cubit.dart';

@immutable
abstract class QuoteState {}

class QuoteInitial extends QuoteState {}
class QuoteLoaded extends QuoteState{
  final List<QuoteModel> quote;
  QuoteLoaded(this.quote);
}