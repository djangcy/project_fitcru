import 'package:flutter/material.dart';
import 'package:project_fitcru/config/router/app_router.dart';
import 'package:project_fitcru/config/themes/theme.dart';
import 'package:project_fitcru/presentation/message_constants.dart';

import 'widgets/food_group_item.dart';
import 'widgets/nutrition_bottom_sheet.dart';

@RoutePage()
class NutritionPage extends StatelessWidget {
  const NutritionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        elevation: 8,
        label: Text(
          'View Plan',
          style: Theme.of(context).textTheme.smallTextButton,
        ),
        onPressed: () {
          NutritionBottomSheetWidget.show(context);
        },
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ListView(
          // assets/food_guide_tables/
          children: [
            const FoodGroupItem(
              foodGroup: 'Carbohydrates',
              path: 'assets/food_guide_tables/Carbohydrates.png',
            ),
            const FoodGroupItem(
              foodGroup: 'Fats',
              path: 'assets/food_guide_tables/Fats.png',
            ),
            FoodGroupItem(
              foodGroup: 'Free Veg',
              path: 'assets/food_guide_tables/Free Veg.png',
              extraInfo: MessageConstants.freeVegInfo_body,
            ),
            const FoodGroupItem(
              foodGroup: 'Fruit',
              path: 'assets/food_guide_tables/Fruit.png',
            ),
            const FoodGroupItem(
              foodGroup: 'Proteins',
              path: 'assets/food_guide_tables/Proteins.png',
            ),
            const FoodGroupItem(
              foodGroup: 'Vegetables',
              path: 'assets/food_guide_tables/Vegetables.png',
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(4, 6, 4, 0),
              child: Text(
                'Foods marked with an asterisk (*) may '
                'contribute to gas and bloating.',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(fontStyle: FontStyle.italic),
              ),
            ),
            // bottom inset to avoid floating button from
            //  ...blocking text in bottom table.
            const SizedBox(
              height: 75,
            ),
          ],
        ),
      ),
    );
  }
}
