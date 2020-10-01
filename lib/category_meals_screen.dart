import 'package:flutter/material.dart';
import 'package:flutter_complete_guide2/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  // CategoryMealsScreen({this.categoryId, this.categoryTitle});
  // final String categoryId;
  // final String categoryTitle;
  @override
  Widget build(BuildContext context) {
    //extract the route args
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    //get the id from the route by passing in the key
    final id = routeArgs['id'];
    //get the title
    final title = routeArgs['title'];
    //convert where to list with toList()
    final categoryMeals =
        DUMMY_MEALS.where((meal) => meal.categories.contains(id)).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text(categoryMeals[index].title, style: TextStyle(color: Colors.amber),);
          },
          itemCount: categoryMeals.length,
        ));
  }
}
