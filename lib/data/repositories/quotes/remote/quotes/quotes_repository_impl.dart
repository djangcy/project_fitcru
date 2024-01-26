import 'package:dio/dio.dart';
import 'package:project_fitcru/data/models/quote/quote.dart';
import 'package:project_fitcru/data/repositories/quotes/remote/quotes/quotes_repository.dart';

class QuotesRepositoryImpl implements QuotesRepository {
  QuotesRepositoryImpl({Dio? dio}) : _dio = dio ?? Dio();

  final Dio _dio;

  final String baseUrl = 'https://zenquotes.io/api';

  @override
  Future<List<QuoteModel>?> getQuotes() async {
    final Response<List<dynamic>> response = await _dio.get('$baseUrl/quotes');

    // print('Type: ${response.data.runtimeType}, Response: ${response.data}');

    final List<dynamic>? data = response.data;

    return data
        ?.map((e) => QuoteModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
