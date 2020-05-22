import 'package:flutter/material.dart';

class CategoryDetailsScreen extends StatelessWidget {
  static final String routename = '/categories-details';

  @override
  Widget build(BuildContext context) {
    final Map<String,String> categoryDetails =
        ModalRoute.of(context).settings.arguments ;
    final categoryId = categoryDetails['id'];
    final categoryTitle = categoryDetails['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Details food'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 70,
            width: 100,
            child: Card(
              child: Column(
                children: <Widget>[
                  Text(categoryId),
                  Text(categoryTitle),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
