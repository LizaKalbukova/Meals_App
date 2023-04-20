import 'package:flutter/material.dart';

import 'package:meals_app/category_screen.dart';

import 'favorites_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('MyTAbs'),
          bottom: TabBar(tabs: [
            Tab(
              child: Text('Categories'),
              icon: Icon(Icons.category),
            ),
            Tab(
              child: Text('Favorite'),
              icon: Icon(Icons.star),
            )
          ]),
        ),
        body: TabBarView(children: <Widget>[
          CategoriesScreen(),
          FavoritesScreen(),
        ]),
      ),
    );
  }
}
