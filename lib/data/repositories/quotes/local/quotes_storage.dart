import 'package:project_fitcru/data/models/quote/quote.dart';
import 'package:project_fitcru/data/services/storage/storage.dart';
import 'package:project_fitcru/helpers/date_helpers.dart';

class QuotesStorage {
  const QuotesStorage(this.storage);

  final StorageService storage;

  String get _indexKey => 'quotes_index';
  String get _dateKey => 'quotes_date';
  String get _lengthKey => 'quotes_length';

  String getItemKey(int index) => 'quote_$index';

  bool get hasItems {
    final int? length = storage.get(_lengthKey) as int?;
    final int? index = storage.get(_indexKey) as int?;
    if (index == null || length == null || length == 0) {
      return false;
    }

    return true;
  }

  QuoteModel? getNextQuote() {
    final int? length = storage.get(_lengthKey) as int?;
    final int? index = storage.get(_indexKey) as int?;
    if (!hasItems) {
      return null;
    }

    final DateTime lastDate = _getDate();

    // We only use one quote per day,
    //  so check if last-used quote is not from today.
    if (!DateHelpers.isToday(lastDate)) {
      if (index! >= length! - 1) {
        // Reset index when end is reached
        _updateIndex(0);
      } else {
        _updateIndex(index + 1);
      }
    }

    // Get next quote
    final QuoteModel? nextQuote = getQuote(getItemKey(index!));

    _updateDate(DateTime.now());

    return nextQuote;
  }

  Future<void> saveQuotes(List<QuoteModel> quotes) async {
    // Quicker and easier than removing quotes individually
    final DateTime date = _getDate();
    await storage.clear();
    _updateDate(date);

    final Map<String, Map<String, dynamic>> mappedQuotes = {};
    for (int i = 0; i < quotes.length; i++) {
      mappedQuotes[getItemKey(i)] = quotes[i].toJson();
    }

    await storage.setAll(mappedQuotes);
    _updateIndex(0);
    _setLength(mappedQuotes.length);
  }

  QuoteModel? getQuote(String key) {
    final dynamic quote = storage.get(key);

    // Gives Map<dynamic, dynamic> error after first parse for some reason.
    if (quote is Map<dynamic, dynamic>) {
      return QuoteModel.fromJson(Map<String, dynamic>.from(quote));
    } else if (quote is Map<String, dynamic>) {
      return QuoteModel.fromJson(quote);
    }

    return null;
  }

  void _updateIndex(int index) {
    storage.set(_indexKey, index);
  }

  void _updateDate(DateTime date) {
    storage.set(_dateKey, date.millisecondsSinceEpoch);
  }

  DateTime _getDate() {
    final milli = storage.get(_dateKey) as int?;

    return milli != null
        ? DateTime.fromMillisecondsSinceEpoch(milli)
        : DateTime.now();
  }

  void _setLength(int length) {
    storage.set(_lengthKey, length);
  }

  Future<void> clear() async {
    await storage.clear();
  }
}
