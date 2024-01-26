import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:project_fitcru/data/models/meal_plan/meal_plan.dart';

part 'meal_plan_model.g.dart';

@JsonSerializable(
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
)
class MealPlanModel {
  const MealPlanModel({
    required this.id,
    required this.mealItems,
    this.description,
    this.updatedAt,
  });

  factory MealPlanModel.fromJson(Map<String, dynamic> json) =>
      _$MealPlanModelFromJson(json);

  @Id()
  final String id;
  final List<MealItemModel> mealItems;
  final String? description;
  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => _$MealPlanModelToJson(this);
}

@Collection<MealPlanModel>('meal_plans')
final mealPlanRef = MealPlanModelCollectionReference();
