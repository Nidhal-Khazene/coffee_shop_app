import 'package:coffee_shop_app/core/utils/colors.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderDeliveryAddress extends StatelessWidget {
  const OrderDeliveryAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Text('Delivery Address', style: AppStyles.semiBold16),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                  'Jl. Kpg Sutoyo',
                  style: AppStyles.semiBold14.copyWith(
                    color: const Color(0xFF303030),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                    style: AppStyles.regular12.copyWith(
                      color: const Color(0xFFA2A2A2),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFA2A2A2)),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 4,
                children: [
                  Icon(Iconsax.edit, size: 14, color: ColorsData.kFontPrimary),
                  Text(
                    'Edit Address',
                    style: AppStyles.regular12.copyWith(
                      color: const Color(0xFF303030),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFA2A2A2)),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 4,
                children: [
                  Icon(
                    Iconsax.document_text,
                    size: 14,
                    color: ColorsData.kFontPrimary,
                  ),
                  Text('Add Note', style: AppStyles.regular12),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
