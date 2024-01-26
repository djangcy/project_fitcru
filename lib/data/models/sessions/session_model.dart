import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:project_fitcru/data/models/sessions/session_item_model.dart';

part 'session_model.g.dart';

@JsonSerializable(
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
)
class SessionModel {
  SessionModel({
    required this.id,
    required this.weekday,
    required this.sessionItems,
    this.createdAt,
    this.updatedAt,
    this.completed,
  });

  factory SessionModel.fromJson(Map<String, dynamic> json) =>
      _$SessionModelFromJson(json);

  Map<String, dynamic> toJson() => _$SessionModelToJson(this);

  @Id()
  final String id;

  final int weekday;
  final List<SessionItemModel> sessionItems;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final bool? completed;
}

@Collection<SessionModel>('sessions')
final sessionsRef = SessionModelCollectionReference();

extension IntToDayOfWeek on int {
  String toDayOfWeekString() {
    switch (this) {
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      case 7:
        return 'Sunday';
      default:
        throw ArgumentError('Invalid day of the week: $this');
    }
  }
}
