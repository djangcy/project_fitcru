import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fitcru/business_logic/services/quotes/quotes_service.dart';
import 'package:project_fitcru/data/models/quote/quote.dart';

part 'current_quote_state.dart';

class CurrentQuoteCubit extends Cubit<CurrentQuoteState> {
  CurrentQuoteCubit(this._quotesService) : super(CurrentQuoteInitial());

  final QuotesService _quotesService;

  Future<void> loadCurrentQuote() async {
    emit(CurrentQuoteLoading());

    final QuoteModel? quote = await _quotesService.getQuote();

    emit(CurrentQuoteLoaded(quote));
  }
}
