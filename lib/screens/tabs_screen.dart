import 'package:flutter/material.dart';
import 'package:flutter_complete_guide2/screens/categories_screens.dart';
import 'package:flutter_complete_guide2/screens/favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    //add tab to the bottom of the app bar
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorites',
              )
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          CategoryScreen(),
          FavoritesScreen(),
        ]),
      ),
    );
  }
}