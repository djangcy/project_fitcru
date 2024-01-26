// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealItemModel _$MealItemModelFromJson(Map<String, dynamic> json) =>
    MealItemModel(
      index: json['index'] as int,
      mealTime: $enumDecode(_$MealTimeEnumMap, json['mealTime']),
      servings: json['servings'] as int,
      foodGroup: $enumDecode(_$FoodGroupEnumMap, json['foodGroup']),
    );

Map<String, dynamic> _$MealItemModelToJson(MealItemModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'mealTime': _$MealTimeEnumMap[instance.mealTime]!,
      'servings': instance.servings,
      'foodGroup': _$FoodGroupEnumMap[instance.foodGroup]!,
    };

const _$MealTimeEnumMap = {
  MealTime.breakfast: 'breakfast',
  MealTime.lunch: 'lunch',
  MealTime.dinner: 'dinner',
  MealTime.snack: 'snack',
};

const _$FoodGroupEnumMap = {
  FoodGroup.carbohydrates: 'carbohydrates',
  FoodGroup.fats: 'fats',
  FoodGroup.freeVeg: 'freeVeg',
  FoodGroup.fruit: 'fruit',
  FoodGroup.proteins: 'proteins',
  FoodGroup.vegetables: 'vegetables',
};
