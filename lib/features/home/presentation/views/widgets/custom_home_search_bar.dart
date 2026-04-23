import 'package:coffee_shop_app/core/utils/assets.dart';
import 'package:coffee_shop_app/core/utils/colors.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';

class CustomHomeSearchBar extends StatelessWidget {
  const CustomHomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hint: Text(
                "Search coffee",
                style: AppStyles.regular14.copyWith(
                  color: ColorsData.kFontThird,
                ),
              ),
              border: buildOutlineInputBorder(),
              enabledBorder: buildOutlineInputBorder(),
              focusedBorder: buildOutlineInputBorder(),
              disabledBorder: buildOutlineInputBorder(),
              filled: true,
              fillColor: const Color(0xFF2A2A2A),
              prefixIcon: const Icon(
                Iconsax.search_normal,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Container(
          padding: const EdgeInsets.all(18),
          decoration: ShapeDecoration(
            color: ColorsData.kPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: SvgPicture.asset(Assets.imagesHelperFilterIcon),
        ),
      ],
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.transparent, width: 1),
    );
  }
}
