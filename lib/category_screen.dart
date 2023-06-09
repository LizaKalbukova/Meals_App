import 'package:flutter/material.dart';
import 'categoty_item.dart';
import 'dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 3 / 2,
      ),
      children: DUMMY_CATEGORIES
          .map((cat) => CategoryItemW(cat.title, cat.color, cat.id))
          .toList(),
    );
  }
}
