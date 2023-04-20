import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import 'meal_card.dart';

class MealCategoryS extends StatelessWidget {
  static const routName = '/MealCategoryS';
  // final String CategoryTitle;
  // final String categoryId;

  // MealCategoryS(
  //  this.CategoryTitle,
  //   this.categoryId,
  // );

  @override
  Widget build(BuildContext context) {
    final routesArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final categoryTitle = routesArg['title'];
    final categoryId = routesArg['id'];
    final filteredMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealCard(
            ingredients: filteredMeal[index].ingredients,
            id: filteredMeal[index].id,
            title: filteredMeal[index].title,
            imageUrl: filteredMeal[index].imageUrl,
            complexity: filteredMeal[index].complexity,
            duration: filteredMeal[index].duration,
            affordability: filteredMeal[index].affordability,
          );
        },
        itemCount: filteredMeal.length,
      ),
    );
  }
}
