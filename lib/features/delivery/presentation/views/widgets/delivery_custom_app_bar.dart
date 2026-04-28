import 'package:coffee_shop_app/shared/widgets/custom_icon_container.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DeliveryCustomAppBar extends StatelessWidget {
  const DeliveryCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconContainer(child: Icon(Iconsax.arrow_left_2)),
        CustomIconContainer(child: Icon(Iconsax.gps)),
      ],
    );
  }
}
