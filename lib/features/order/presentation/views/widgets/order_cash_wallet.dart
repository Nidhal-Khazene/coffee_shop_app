import 'dart:math' as math;

import 'package:coffee_shop_app/core/utils/colors.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:coffee_shop_app/features/delivery/presentation/views/delivery_view.dart';
import 'package:coffee_shop_app/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderCashWallet extends StatelessWidget {
  const OrderCashWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 8, left: 24, right: 24),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Iconsax.wallet, color: ColorsData.kPrimary, size: 24),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Cash/Wallet', style: AppStyles.semiBold14),
                  const SizedBox(height: 4),
                  Text(
                    '\$ 5.53',
                    style: AppStyles.semiBold12.copyWith(
                      color: ColorsData.kPrimary,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Transform.rotate(
                angle: -math.pi / 2,
                child: const Icon(Icons.arrow_back_ios_new, size: 24),
              ),
            ],
          ),
          const SizedBox(height: 16),
          CustomButton(
            onTap: () {
              Navigator.pushNamed(context, DeliveryView.routeName);
            },
            content: 'Order',
          ),
        ],
      ),
    );
  }
}
