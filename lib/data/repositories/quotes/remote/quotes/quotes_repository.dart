import 'package:project_fitcru/data/models/quote/quote.dart';

// ignore: one_member_abstracts
abstract class QuotesRepository {
  Future<List<QuoteModel>?> getQuotes();
}
