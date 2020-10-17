import 'package:flutter/material.dart';
import 'package:meals_app/category_item.dart';
import 'package:meals_app/dummy-data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DeliMeal')),
      body: GridView(
        children: DUMMY_CATEGORIES
            .map((categoryData) =>
                CategoryItem(categoryData.title, categoryData.color))
            .toList(),
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
