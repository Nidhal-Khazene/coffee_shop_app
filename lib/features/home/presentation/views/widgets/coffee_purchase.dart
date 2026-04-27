import 'package:coffee_shop_app/core/utils/colors.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:coffee_shop_app/features/order/presentation/views/order_view.dart';
import 'package:coffee_shop_app/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CoffeePurchase extends StatelessWidget {
  const CoffeePurchase({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 24, right: 24, bottom: 46),
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(
                'Price',
                style: AppStyles.regular14.copyWith(
                  color: const Color(0xFF909090),
                ),
              ),
              SizedBox(
                width: 76,
                child: Text(
                  '\$ 4.53',
                  style: AppStyles.semiBold18.copyWith(
                    color: ColorsData.kPrimary,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          CustomButton(
            onTap: () {
              Navigator.pushNamed(context, OrderView.routeName);
            },
            content: 'Buy Now',
            width: 217,
            height: 56,
          ),
        ],
      ),
    );
  }
}
