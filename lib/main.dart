import 'package:flutter/material.dart';
import 'category_screen.dart';
import 'screens/category_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.yellow,
        fontFamily: 'DidactGothic',
        textTheme: ThemeData.dark().textTheme.copyWith(
              bodyText1: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
              bodyText2: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => CategoriesScreen(),
        MealCategoryS.routName: (context) => MealCategoryS(),
      },
    );
  }
}
