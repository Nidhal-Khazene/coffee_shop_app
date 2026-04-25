import 'package:coffee_shop_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CoffeeDetailsViewImage extends StatelessWidget {
  const CoffeeDetailsViewImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9.5,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: Image.asset(Assets.imagesCoffeeDetails).image,
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
