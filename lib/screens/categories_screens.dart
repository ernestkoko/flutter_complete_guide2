import 'package:flutter/material.dart';
import 'file:///C:/Users/user/flutter/flutter_complete_guide2/lib/widgets/category_item.dart';
import '../dummy_data.dart';

class CategoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DeliMeals'),),
      body: GridView(
        padding: const EdgeInsets.all(25.0),
        //we call toList at the end of map to change it from iterable to a list
        children: DUMMY_CATEGORIES.map((catData) =>
            CategoryItem(id: catData.id,title: catData.title, color: catData.color,)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),

      ),
    );
  }
}
