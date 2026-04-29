import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderViewCustomAppBar extends StatelessWidget {
  const OrderViewCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Iconsax.arrow_left_2),
        ),
        Text("Order", style: AppStyles.semiBold16),
        const SizedBox(),
      ],
    );
  }
}
