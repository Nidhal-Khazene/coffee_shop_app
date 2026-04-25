import 'package:coffee_shop_app/core/utils/assets.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CoffeeDetailsViewInformation extends StatelessWidget {
  const CoffeeDetailsViewInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Caffe Mocha', style: AppStyles.semiBold20),
        const SizedBox(height: 4),
        Row(
          children: [
            Text(
              'Ice/Hot',
              style: AppStyles.regular12.copyWith(
                color: const Color(0xFFA2A2A2),
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: ShapeDecoration(
                color: const Color(0x59EDEDED),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Image.asset(
                Assets.imagesHelperDeliveryIcon,
                height: 24,
                width: 24,
              ),
            ),
            const SizedBox(width: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: ShapeDecoration(
                color: const Color(0x59EDEDED),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Image.asset(
                Assets.imagesHelperBeansIcon,
                height: 24,
                width: 24,
              ),
            ),
            const SizedBox(width: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: ShapeDecoration(
                color: const Color(0x59EDEDED),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Image.asset(
                Assets.imagesHelperPackageIcon,
                height: 24,
                width: 24,
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Icon(
              IconlyBold.star,
              size: 20,
              color: const Color(0xFFFABD21),
            ),
            const SizedBox(width: 4),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: '4.8 ', style: AppStyles.semiBold16),
                  TextSpan(
                    text: '(230)',
                    style: AppStyles.regular12.copyWith(
                      color: const Color(0xFFA2A2A2),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
