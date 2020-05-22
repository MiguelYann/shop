import 'package:flutter/material.dart';
import 'package:shop/ui/resources/widgets/category_details.dart';
import 'package:shop/ui/screens/categories.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (ctxx) => CategoryScreen(),
        CategoryDetailsScreen.routename: (ctx) => CategoryDetailsScreen(),
      },
      title: 'Shop',
      theme: ThemeData(primarySwatch: Colors.amber, fontFamily: 'Raleway'),
    );
  }
}
