import 'package:dio/dio.dart';
import 'package:project_fitcru/data/models/quote/quote.dart';
import 'package:project_fitcru/data/repositories/quotes/remote/quotes/quotes_repository.dart';

class QuotesRepositoryImpl implements QuotesRepository {
  QuotesRepositoryImpl({Dio? dio}) : _dio = dio ?? Dio();

  final Dio _dio;

  // Firebase function url. Returns quotes from https://zenquotes.io/api/quotes.
  final String url = 'https://getquotes-7mve4ox5dq-uc.a.run.app';

  @override
  Future<List<QuoteModel>?> getQuotes() async {
    final Response<List<dynamic>> response = await _dio.get(url);

    final List<dynamic>? data = response.data;

    return data
        ?.map((e) => QuoteModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
