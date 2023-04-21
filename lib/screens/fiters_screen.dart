import 'package:flutter/material.dart';
import 'package:meals_app/main_drawer.dart';

class FilteredScreen extends StatelessWidget {
  const FilteredScreen({super.key});
  static const routName = '/FilteredScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Filters')),
      drawer: MainDrawer(),
    );
  }
}
