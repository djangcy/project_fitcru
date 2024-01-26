import 'package:json_annotation/json_annotation.dart';

part 'meal_item_model.g.dart';

enum FoodGroup {
  carbohydrates,
  fats,
  freeVeg,
  fruit,
  proteins,
  vegetables,
}

extension on FoodGroup {
  String get name {
    switch (this) {
      case FoodGroup.carbohydrates:
        return 'Carbohydrates';
      case FoodGroup.fats:
        return 'Fats';
      case FoodGroup.freeVeg:
        return 'Free Veg';
      case FoodGroup.fruit:
        return 'Fruit';
      case FoodGroup.proteins:
        return 'Proteins';
      case FoodGroup.vegetables:
        return 'Vegetables';
    }
  }
}

enum MealTime {
  breakfast,
  lunch,
  dinner,
  snack,
}

extension on MealTime {
  String get name {
    switch (this) {
      case MealTime.breakfast:
        return 'Breakfast';
      case MealTime.lunch:
        return 'Lunch';
      case MealTime.dinner:
        return 'Dinner';
      case MealTime.snack:
        return 'Snack';
    }
  }
}

@JsonSerializable()
class MealItemModel {
  const MealItemModel({
    required this.index,
    required this.mealTime,
    required this.servings,
    required this.foodGroup,
  });

  factory MealItemModel.fromJson(Map<String, dynamic> json) =>
      _$MealItemModelFromJson(json);

  final int index;
  final MealTime mealTime;
  final int servings;
  final FoodGroup foodGroup;

  Map<String, dynamic> toJson() => _$MealItemModelToJson(this);
}
