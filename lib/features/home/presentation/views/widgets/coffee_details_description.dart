import 'package:coffee_shop_app/core/utils/colors.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CoffeeDetailsDescription extends StatelessWidget {
  const CoffeeDetailsDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Text('Description', style: AppStyles.semiBold16),
        SizedBox(
          width: double.infinity,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text:
                      'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ',
                  style: AppStyles.light14.copyWith(
                    color: const Color(0xFFA2A2A2),
                  ),
                ),
                TextSpan(
                  text: 'Read More',
                  style: AppStyles.semiBold14.copyWith(
                    color: ColorsData.kPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
