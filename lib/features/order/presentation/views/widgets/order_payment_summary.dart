import 'package:coffee_shop_app/core/utils/colors.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OrderPaymentSummary extends StatelessWidget {
  const OrderPaymentSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 93,
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Text('Payment Summary', style: AppStyles.semiBold16),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Price',
                    style: AppStyles.regular14.copyWith(
                      color: ColorsData.kFontSecondary,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$ 4.53',
                    textAlign: TextAlign.right,
                    style: AppStyles.semiBold14,
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Delivery Fee',
                    style: AppStyles.regular14.copyWith(
                      color: ColorsData.kFontSecondary,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 8,
                    children: [
                      Text(
                        '\$ 2.0',
                        textAlign: TextAlign.right,
                        style: AppStyles.regular14.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Text(
                        '\$ 1.0',
                        textAlign: TextAlign.right,
                        style: AppStyles.semiBold14,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
