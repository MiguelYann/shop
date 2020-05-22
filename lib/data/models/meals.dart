import 'package:flutter/material.dart';

enum Complexity { SIMPLE, DIFFICULT, CHALLENGER }
enum Affordability { LUXURIOUS, PRICEY, AFFORDABLE }

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final int duration;
  final Affordability affordability;
  final Complexity complexity;
  final List<String> ingredients;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  const Meal({
    @required this.complexity,
    @required this.isVegan,
    @required this.affordability,
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.duration,
    @required this.ingredients,
    @required this.steps,
    @required this.isGlutenFree,
    @required this.isVegetarian,
    @required this.isLactoseFree,
  });
}
