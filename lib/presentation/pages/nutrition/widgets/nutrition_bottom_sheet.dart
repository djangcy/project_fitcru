import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fitcru/business_logic/blocs/nutrition/nutrition_cubit/nutrition_cubit.dart';
import 'package:project_fitcru/data/models/meal_plan/meal_plan.dart';
import 'package:project_fitcru/presentation/message_constants.dart';
import 'package:project_fitcru/presentation/widgets/widgets.dart';

import 'meal_plan_item.dart';

class NutritionBottomSheetWidget extends StatelessWidget {
  const NutritionBottomSheetWidget._({super.key});

  NutritionBottomSheetWidget.show(
    BuildContext context, {
    super.key,
  }) {
    showModalBottomSheet<dynamic>(
      context: context,
      backgroundColor: Colors.transparent,
      elevation: 8,
      isScrollControlled: true,
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider<NutritionCubit>(
            create: (context) => NutritionCubit()..loadNutrition(),
          ),
        ],
        child: NutritionBottomSheetWidget._(key: key),
      ),
    );
  }

  String getBody(List<MealItemModel> mealItems) {
    final StringBuffer buffer = StringBuffer();

    for (final MealItemModel item in mealItems) {
      final String plural = item.servings > 1 ? 'servings' : 'serving';
      buffer.write('${item.servings} $plural of ${item.foodGroup.name}\n');
    }

    return buffer.toString();
  }

  Widget buildMealPlanItems(BuildContext context) {
    final List<MealItemModel>? mealItems =
        context.read<NutritionCubit>().state.mealPlan?.mealItems;

    if (mealItems == null) {
      return const SizedBox.shrink();
    }

    return Expanded(
      child: Container(
        margin: const EdgeInsets.fromLTRB(15, 5, 15, 15),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: mealItems.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: PlanItem(
                    title: mealItems[index].mealTime.name,
                    body: getBody(mealItems),
                    extraInfo: mealItems[index].mealTime == MealTime.snack
                        ? MessageConstants.snackInfo_body
                        : null,
                  ),
                ),
                Divider(
                  color: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.25),
                  thickness: 1,
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NutritionCubit, NutritionState>(
      builder: (context, state) {
        if (state is NutritionNotFound) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ErrorDialog.show(
              context,
              title: 'Missing',
              message:
                  'Your meal plan does not exist yet. Please contact a FitCrü '
                  'representitive if this error persists.',
            );
          });
        }

        if (state is NutritionLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return Container(
          height: MediaQuery.of(context).size.height * 0.75,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      'Meal Plan',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.info_outline,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      onPressed: () {
                        NoteCardLongDialog.show(
                          context,
                          titleMessage: 'Description',
                          contentMessage: state.mealPlan?.description ?? 'n/a',
                        );
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                  color: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.35),
                  thickness: 2,
                ),
              ),
              buildMealPlanItems(context),
            ],
          ),
        );
      },
    );
  }
}
