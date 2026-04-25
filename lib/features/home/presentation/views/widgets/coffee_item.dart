import 'package:coffee_shop_app/features/home/presentation/views/widgets/coffee_item_image.dart';
import 'package:flutter/material.dart';

class CoffeeItem extends StatelessWidget {
  const CoffeeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Stack(children: [CoffeeItemImage()]),
    );
  }
}
