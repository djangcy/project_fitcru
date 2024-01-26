import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fitcru/data/models/meal_plan/meal_plan.dart';

part 'nutrition_state.dart';

class NutritionCubit extends Cubit<NutritionState> {
  NutritionCubit() : super(NutritionInitial());

  Future<void> loadNutrition() async {
    emit(NutritionLoading());

    try {
      final snapshot = await mealPlanRef.orderByUpdatedAt().limit(1).get();

      if (snapshot.docs.isEmpty) {
        emit(NutritionNotFound());
        return;
      }

      final mealPlan = snapshot.docs.first.data;

      emit(NutritionLoaded(mealPlan));
    } catch (e) {
      emit(NutritionError(message: e.toString()));
    }
  }
}
