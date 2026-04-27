import 'package:coffee_shop_app/core/utils/colors.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderDiscount extends StatelessWidget {
  const OrderDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFEDEDED)),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 16,
            children: [
              Icon(
                Iconsax.discount_circle,
                size: 16,
                color: ColorsData.kPrimary,
              ),
              Text('1 Discount is Applies', style: AppStyles.semiBold14),
            ],
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_rounded, size: 16),
        ],
      ),
    );
  }
}
