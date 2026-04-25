import 'package:coffee_shop_app/core/utils/assets.dart';
import 'package:coffee_shop_app/features/home/domain/entities/coffee_entity.dart';
import 'package:coffee_shop_app/features/home/presentation/views/widgets/coffee_item.dart';
import 'package:flutter/material.dart';

class CoffeeGridView extends StatelessWidget {
  const CoffeeGridView({super.key});

  static List<CoffeeEntity> coffees = [
    CoffeeEntity(
      name: "Caffe Mocha",
      type: "Deep Foam",
      price: 4.53,
      image: Assets.imagesCoffee1,
    ),
    CoffeeEntity(
      name: "Flat White",
      type: "Espresso",
      price: 3.53,
      image: Assets.imagesCoffee2,
    ),
    CoffeeEntity(
      name: "Mocha Fusi",
      type: "Ice/Hot",
      price: 7.53,
      image: Assets.imagesCoffee3,
    ),
    CoffeeEntity(
      name: "Caffe Panna",
      type: "Ice/Hot",
      price: 5.53,
      image: Assets.imagesCoffee4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      // 👈 sliver-native grid
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 156 / 238,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
      ),
      delegate: SliverChildBuilderDelegate(
        // 👈 sliver-native builder
        (context, index) => CoffeeItem(
          name: coffees[index].name,
          type: coffees[index].type,
          image: coffees[index].image,
          price: coffees[index].price,
        ),
        childCount: coffees.length, // 👈 bounds the delegate
      ),
    );
  }
}
