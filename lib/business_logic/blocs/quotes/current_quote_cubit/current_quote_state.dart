part of 'current_quote_cubit.dart';

sealed class CurrentQuoteState {
  const CurrentQuoteState([this.quote]);

  final QuoteModel? quote;
}

final class CurrentQuoteInitial extends CurrentQuoteState {}

final class CurrentQuoteLoading extends CurrentQuoteState {}

final class CurrentQuoteLoaded extends CurrentQuoteState {
  const CurrentQuoteLoaded(super.quote);
}

final class CurrentQuoteError extends CurrentQuoteState {
  const CurrentQuoteError({this.message});

  final String? message;
}
