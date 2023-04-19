import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({super.key});
  static const routName = '/MealDetail';
  Widget plaseForDetails(Widget child) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Color.fromARGB(255, 120, 120, 120),
          ),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final routesArg = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) {
      return meal.id == routesArg;
    });

    return Scaffold(
        appBar: AppBar(title: Text(routesArg)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Text('INGRIDIENTS:'),
              plaseForDetails(
                ListView.builder(
                  itemCount: selectedMeal.ingredients.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Text(
                        selectedMeal.ingredients[index],
                      ),
                    );
                  },
                ),
              ),
              Text('STEPS:'),
              plaseForDetails(ListView.builder(
                itemCount: selectedMeal.steps.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(child: Text('${index + 1}')),
                        title: Text(
                          selectedMeal.steps[index],
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Divider(
                        color: Colors.black54,
                      )
                    ],
                  );
                },
              ))
            ],
          ),
        ));
  }
}
