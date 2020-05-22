import 'package:flutter/material.dart';
import 'package:shop/data/models/fake_categories_data.dart';
import 'package:shop/ui/resources/widgets/category_item.dart';

class CategoryScreen extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Shop cuisto'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: <Widget>[
          ...DUMMY_CATEGORIES
              .map((category) => CategoryItem(
                    id: category.id,
                    title: category.title,
                    color: category.color,
                  ))
              .toList()
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 190,
            childAspectRatio: 1.5,
            crossAxisSpacing: 30,
            mainAxisSpacing: 20),
      ),
    );
  }
}
