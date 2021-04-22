import 'food.dart';
import 'package:flutter/material.dart';

class FoodsRepository {
  static List<Food> loadFoods(Category category) {
    const allFoods = <Food> [
      Food(
        category: Category.vegan,
        id: 0,
        title: 'Vegan salad bowl',
        ingredients: 'Alface, rucula, cebola',
        image: "images/image_1.png",
        calories: "420Kcal",
        price: 25,
        press: true,
      ),
      Food(
        category: Category.vegan,
        id: 1,
        title: 'Salada crocante',
        ingredients: 'Brocolis, cenoura, repolho',
        isFeatured: false,
        image: "images/image_2.png",
        calories: "635Kcal",
        price: 35,
      ),
      Food(
        category: Category.asian,
        id: 2,
        title: 'Lamen',
        ingredients: 'Brocolis, cenoura, repolho',
        image: "images/asian.png",
        calories: "1212Kcal",
        price: 58,
      ),

    ];
    if (category == Category.all) {
      return allFoods;
    } else {
      return allFoods.where((Food p) {
        return p.category == category;
      }).toList();
    }
  }
}
