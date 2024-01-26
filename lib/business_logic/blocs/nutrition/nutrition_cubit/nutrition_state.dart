part of 'nutrition_cubit.dart';

sealed class NutritionState {
  const NutritionState([this.mealPlan]);

  final MealPlanModel? mealPlan;
}

final class NutritionInitial extends NutritionState {}

final class NutritionLoading extends NutritionState {}

final class NutritionLoaded extends NutritionState {
  const NutritionLoaded(super.mealPlan);
}

final class NutritionNotFound extends NutritionState {}

final class NutritionError extends NutritionState {
  const NutritionError({this.message});

  final String? message;
}
