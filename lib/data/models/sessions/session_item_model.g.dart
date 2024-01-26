// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionItemModel _$SessionItemModelFromJson(Map<String, dynamic> json) =>
    SessionItemModel(
      index: json['index'] as int,
      exerciseName: json['exerciseName'] as String,
      note: json['note'] as String,
      reps: json['reps'] as String,
      restPeriod: json['restPeriod'] as String,
      sets: json['sets'] as String,
      videoUrl: json['videoUrl'] as String,
      completed: json['completed'] as bool?,
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SessionItemModelToJson(SessionItemModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'exerciseName': instance.exerciseName,
      'note': instance.note,
      'reps': instance.reps,
      'restPeriod': instance.restPeriod,
      'sets': instance.sets,
      'videoUrl': instance.videoUrl,
      'completed': instance.completed,
      'weight': instance.weight,
    };
