import 'package:flutter/material.dart';
import 'package:shop/ui/screens/categories.dart';

import 'ui/screens/category_details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: CategoryScreen.routeName,
      routes: {
        CategoryScreen.routeName: (ctxx) => CategoryScreen(),
        CategoryDetailsScreen.routename: (ctx) => CategoryDetailsScreen(),
      },
      title: 'Shop',
      theme: ThemeData(primarySwatch: Colors.amber, fontFamily: 'Raleway'),
    );
  }
}
