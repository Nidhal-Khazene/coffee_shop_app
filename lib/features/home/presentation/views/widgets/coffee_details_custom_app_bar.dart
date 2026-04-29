import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';

class CoffeeDetailsCustomAppBar extends StatefulWidget {
  const CoffeeDetailsCustomAppBar({super.key});

  @override
  State<CoffeeDetailsCustomAppBar> createState() =>
      _CoffeeDetailsCustomAppBarState();
}

class _CoffeeDetailsCustomAppBarState extends State<CoffeeDetailsCustomAppBar> {
  bool isSelected = false;
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
        Text("Detail", style: AppStyles.semiBold16),
        GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: isSelected
              ? const Icon(IconlyBold.heart, size: 24, color: Colors.red)
              : const Icon(IconlyLight.heart, size: 24),
        ),
      ],
    );
  }
}
