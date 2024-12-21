import 'package:flutter/material.dart';
import 'package:meals/components/grid_item.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/Category.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/meals.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.onFavouriteMeal});
  final Function(Meal meal) onFavouriteMeal;

  void _chooseCategory(BuildContext context, Category category) {
    final meals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(
          title: category.title,
          meals: meals,
          onFavouriteMeal: onFavouriteMeal,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 20,
      ),
      children: availableCategories
          .map((category) => GridItem(
                category: category,
                onChooseCategory: () {
                  _chooseCategory(context, category);
                },
              ))
          .toList(),
    );
  }
}
