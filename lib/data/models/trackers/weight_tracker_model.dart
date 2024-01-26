// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weight_tracker_model.g.dart';

@JsonSerializable(
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
)
class WeightTrackerModel {
  const WeightTrackerModel({
    required this.id,
    required this.date,
    required this.weight,
  });

  factory WeightTrackerModel.fromJson(Map<String, dynamic> json) =>
      _$WeightTrackerModelFromJson(json);

  final String id;
  final DateTime date;
  final double weight;

  Map<String, dynamic> toJson() => _$WeightTrackerModelToJson(this);

  WeightTrackerModel copyWith({
    String? id,
    DateTime? date,
    double? weight,
  }) {
    return WeightTrackerModel(
      id: id ?? this.id,
      date: date ?? this.date,
      weight: weight ?? this.weight,
    );
  }
}

@Collection<WeightTrackerModel>('weight_trackers')
final weightTrackersRef = WeightTrackerModelCollectionReference();
