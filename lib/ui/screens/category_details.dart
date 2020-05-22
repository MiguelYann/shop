import 'package:flutter/material.dart';
import 'package:shop/data/models/fake_categories_data.dart';
import 'package:shop/ui/resources/widgets/meal_item.dart';

class CategoryDetailsScreen extends StatelessWidget {
  static const String routename = '/categories-details';

  @override
  Widget build(BuildContext context) {
    final Map<String, String> categoryDetails =
        ModalRoute.of(context).settings.arguments;
    final categoryId = categoryDetails['id'];
    final categoryTitle = categoryDetails['title'];

    final categoriesMeal = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();
    return Scaffold(
        appBar: AppBar(
          title: Text('Details food'),
        ),
        body: ListView.builder(
          itemCount: categoriesMeal.length,
          itemBuilder: (_, index) {
            return MealItem(
              title: categoriesMeal[index].title,
              affordability: categoriesMeal[index].affordability,
              complexity: categoriesMeal[index].complexity,
              duration: categoriesMeal[index].duration,
              imageUrl: categoriesMeal[index].imageUrl,
            );
          },
        ));
  }
}
