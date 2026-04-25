import 'package:coffee_shop_app/core/utils/assets.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CoffeeItemImage extends StatelessWidget {
  const CoffeeItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 128,
          width: 140,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Image.asset(Assets.imagesCoffee1).image,
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            width: 51,
            padding: const EdgeInsets.all(8),
            decoration: const ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(1.00, -0.00),
                end: Alignment(-0.00, 1.00),
                colors: [Color(0xFF111111), Color(0xFF303030)],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(24),
                ),
              ),
            ),
            child: Center(
              child: Row(
                children: [
                  Icon(IconlyBold.star, color: Colors.amber, size: 12),
                  SizedBox(width: 4),
                  Text(
                    "4.8",
                    style: AppStyles.semiBold8.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
