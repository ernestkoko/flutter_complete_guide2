import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  // CategoryMealsScreen({this.categoryId, this.categoryTitle});
  // final String categoryId;
  // final String categoryTitle;
  @override
  Widget build(BuildContext context) {
    //extract the route args
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    //get the id from the route by passing in the key
    final id = routeArgs['id'];
    //get the title
    final title = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('The Recipes For The Category!'),
      ),
    );
  }
}
