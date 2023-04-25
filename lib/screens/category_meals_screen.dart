import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import 'meal_card.dart';
import 'package:meals_app/models/meal.dart';

class MealCategoryS extends StatefulWidget {
  static const routName = '/MealCategoryS';

  @override
  State<MealCategoryS> createState() => _MealCategorySState();
}

class _MealCategorySState extends State<MealCategoryS> {
  List<Meal> displayesdMeals = [];
  var _loadedInitData = false;

  String categoryTitle = '';
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routesArg =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;

      categoryTitle = routesArg['title']!;
      final categoryId = routesArg['id'];
      displayesdMeals = DUMMY_MEALS.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }

    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayesdMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealCard(
            id: displayesdMeals[index].id,
            title: displayesdMeals[index].title,
            imageUrl: displayesdMeals[index].imageUrl,
            complexity: displayesdMeals[index].complexity,
            duration: displayesdMeals[index].duration,
            affordability: displayesdMeals[index].affordability,
            removeItem: _removeMeal,
          );
        },
        itemCount: displayesdMeals.length,
      ),
    );
  }
}
