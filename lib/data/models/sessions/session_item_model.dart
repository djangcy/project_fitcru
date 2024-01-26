// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'session_item_model.g.dart';

@JsonSerializable()
class SessionItemModel {
  const SessionItemModel({
    required this.index,
    required this.exerciseName,
    required this.note,
    required this.reps,
    required this.restPeriod,
    required this.sets,
    required this.videoUrl,
    this.completed,
    this.weight,
  });

  factory SessionItemModel.fromJson(Map<String, dynamic> json) =>
      _$SessionItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$SessionItemModelToJson(this);

  final int index;
  final String exerciseName;
  final String note;
  final String reps;
  final String restPeriod;
  final String sets;
  final String videoUrl;
  final bool? completed;
  final double? weight;

  SessionItemModel copyWith({
    int? index,
    String? exerciseName,
    String? note,
    String? reps,
    String? restPeriod,
    String? sets,
    String? videoUrl,
    bool? completed,
    double? weight,
  }) {
    return SessionItemModel(
      index: index ?? this.index,
      exerciseName: exerciseName ?? this.exerciseName,
      note: note ?? this.note,
      reps: reps ?? this.reps,
      restPeriod: restPeriod ?? this.restPeriod,
      sets: sets ?? this.sets,
      videoUrl: videoUrl ?? this.videoUrl,
      completed: completed ?? this.completed,
      weight: weight ?? this.weight,
    );
  }
}
