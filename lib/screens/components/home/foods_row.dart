import 'package:flutter/material.dart';
import 'package:food_app/model/food.dart';
import 'package:food_app/widgets/food_card.dart';

class FoodsRow extends StatelessWidget {
  final List<Food> foods;

  FoodsRow({Key key, this.foods});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(foods.length, (i) {
                return FoodCard(food: foods[i]);
            }),
        ),
    );
  }
}


