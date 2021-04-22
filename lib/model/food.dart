import 'package:flutter/foundation.dart';

enum Category { 
    all,
    italian,
    asian,
    chinese,
    burgers,
    vegan
}

class Food {
  const Food({
    @required this.category,
    @required this.id,
    @required this.title,
    @required this.ingredients,
    @required this.image,
    @required this.calories,
    this.description = "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ",
    @required this.price,
    this.isFeatured = true,
    this.press = false,
  })  : assert(category != null),
        assert(id != null),
        assert(title != null),
        assert(ingredients != null),
        assert(image != null),
        assert(calories != null),
        assert(description != null),
        assert(price != null),
        assert(isFeatured != null);

  final Category category;
  final int id;
  final String title;
  final String ingredients;
  final String image;
  final String calories;
  final String description;
  final int price;
  final bool isFeatured;
  final bool press;

  @override
  String toString() => "$title (id=$id)";
}
