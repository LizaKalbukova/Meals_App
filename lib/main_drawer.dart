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
            Navigator.of(context).pushNamed('/');
          }),
          listTileBuilder('Filters', Icons.settings, () {
            Navigator.of(context).pushNamed(FilteredScreen.routName);
          })
        ],
      ),
    );
  }
}
