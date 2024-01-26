import 'package:project_fitcru/data/models/quote/quote.dart';
import 'package:project_fitcru/data/repositories/quotes/local/quotes_storage.dart';
import 'package:project_fitcru/data/repositories/quotes/remote/quotes/quotes.dart';

class QuotesService {
  const QuotesService(this.quotesRepository, this.quotesStorage);

  final QuotesRepository quotesRepository;
  final QuotesStorage quotesStorage;

  Future<QuoteModel?> getQuote() async {
    if (!quotesStorage.hasItems) {
      final newQuotes = await quotesRepository.getQuotes();

      if (newQuotes != null) {
        await quotesStorage.saveQuotes(newQuotes);
      }
    }

    return quotesStorage.getNextQuote();
  }

  Future<void> clearQuotes() async {
    await quotesStorage.clear();
  }
}
