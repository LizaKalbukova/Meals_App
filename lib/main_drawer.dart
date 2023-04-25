import 'package:flutter/material.dart';
import 'screens/fiters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget listTileBuilder(
      String title, IconData icon, VoidCallback pageHandler) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 25),
      ),
      leading: Icon(
        icon,
        size: 30,
      ),
      onTap: pageHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            alignment: Alignment.centerLeft,
            child: Text(
              "Ckooking UP !",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.amber),
            ),
          ),
          SizedBox(height: 20),
          listTileBuilder('Meals', Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed(
                '/'); // замість pushNamed щоб наш стек не заповнювався постійно, а щоб екрани видалялися і замінювалися поточні
          }),
          listTileBuilder('Filters', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed(FilteredScreen.routName);
          })
        ],
      ),
    );
  }
}
