import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CoffeeDetailsCustomAppBar extends StatelessWidget {
  const CoffeeDetailsCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios_new_outlined, size: 24),
        ),
        Text("Detail", style: AppStyles.semiBold16),
        const Icon(IconlyLight.heart, size: 24),
      ],
    );
  }
}
