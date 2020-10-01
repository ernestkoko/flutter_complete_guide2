import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({this.title, this.color});

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}