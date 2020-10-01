import 'package:flutter/material.dart';
import './category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({this.title, this.color});

  final String title;
  final Color color;

  void selectCategory(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => CategoryMealsScreen()));
  }

  @override
  Widget build(BuildContext context) {
    //InkWell is a gesture detector that sends a ripple effect.. and you can
    //configure the anim
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            //set the direction
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
