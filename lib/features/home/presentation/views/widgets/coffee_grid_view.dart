import 'package:coffee_shop_app/core/utils/assets.dart';
import 'package:coffee_shop_app/features/home/domain/entities/coffee_entity.dart';
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
  ];

  @override
  Widget build(BuildContext context) {
    return Placeholder();
    // return SliverGrid.builder(
    //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2,
    //     childAspectRatio: 156 / 238,
    //     mainAxisSpacing: 8,
    //     crossAxisSpacing: 16,
    //   ),
    //   itemCount: coffees.length,
    //   itemBuilder: (context, index) =>
    //       // FruitItem(productEntity: products[index]),
    // );
  }
}
