import 'package:coffee_shop_app/core/utils/assets.dart';
import 'package:coffee_shop_app/core/utils/colors.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:coffee_shop_app/features/home/presentation/views/widgets/custom_home_search_bar.dart';
import 'package:coffee_shop_app/features/home/presentation/views/widgets/promo_card.dart';
import 'package:flutter/material.dart';

class CustomHomeHeader extends StatelessWidget {
  const CustomHomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 280,
          width: double.infinity,
          child: Image.asset(Assets.imagesWhitedBlackBg, fit: BoxFit.cover),
        ),
        Positioned(
          top: 68,
          left: 24,
          child: Text(
            "Location",
            style: AppStyles.regular12.copyWith(color: ColorsData.kFontThird),
          ),
        ),
        Positioned(
          top: 44 + 46,
          left: 24,
          child: Row(
            children: [
              Text(
                "Bilzen, Tanjungbalai",
                style: AppStyles.regular14.copyWith(
                  color: const Color(0xFFD8D8D8),
                ),
              ),
              const SizedBox(width: 4),
              Icon(
                Icons.keyboard_arrow_down,
                color: ColorsData.kFontThird,
                size: 14,
              ),
            ],
          ),
        ),
        const Positioned(
          top: 44 + 91,
          left: 24,
          right: 24, // ← Add this
          child: CustomHomeSearchBar(),
        ),
        const Positioned(
          left: 24,
          right: 24,
          top: 44 + 167,
          child: PromoCard(),
        ),
      ],
    );
  }
}
