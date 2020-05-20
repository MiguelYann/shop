import 'package:flutter/material.dart';
import 'package:shop/ui/screens/categories.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: 'Raleway'
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Shop'),

        ),
        body: CategorieScreen()
      ),
    );
  }
}

