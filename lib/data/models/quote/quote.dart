import 'package:json_annotation/json_annotation.dart';

part 'quote.g.dart';

@JsonSerializable()
class QuoteModel {
  const QuoteModel({
    this.text,
    this.author,
  });

  factory QuoteModel.fromJson(Map<String, dynamic> json) =>
      _$QuoteModelFromJson(json);

  @JsonKey(name: 'q')
  final String? text;
  @JsonKey(name: 'a')
  final String? author;

  Map<String, dynamic> toJson() => _$QuoteModelToJson(this);
}
