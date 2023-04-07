import 'package:flutter/material.dart';

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

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: Center(
        child: Text(
          'liza',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
