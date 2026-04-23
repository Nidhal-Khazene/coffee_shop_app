import 'package:coffee_shop_app/core/utils/assets.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:coffee_shop_app/features/home/presentation/views/widgets/promo_card_text_content.dart';
import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: SizedBox(
              height: 140,
              width: double.infinity,
              child: Image.asset(
                Assets.imagesHomeBannerPromo,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 13,
            left: 24,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              decoration: ShapeDecoration(
                color: const Color(0xFFEC5050),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                "Promo",
                style: AppStyles.semiBold14.copyWith(color: Colors.white),
              ),
            ),
          ),
          const Positioned(top: 47, left: 24, child: PromoCardTextContent()),
        ],
      ),
    );
  }
}
