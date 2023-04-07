import 'package:flutter/material.dart';

import 'screens/category_meals_screen.dart';

class CategoryItemW extends StatelessWidget {
  final String title;
  final Color color;
  final String id;
  CategoryItemW(this.title, this.color, this.id);

  void selectCategory(BuildContext context) {
    /// onTap
    Navigator.pushNamed(context, '/MealCategoryS', arguments: {
      'id': id,
      'title': title,
    });

    //  Navigator.push(context, MaterialPageRoute(builder: (_) {
    //   return MealCategoryS(title, id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
      ),
    );
  }
}
