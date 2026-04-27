import 'package:coffee_shop_app/core/constants/constants.dart';
import 'package:coffee_shop_app/features/order/presentation/views/widgets/coffee_increment_decrement.dart';
import 'package:coffee_shop_app/features/order/presentation/views/widgets/order_delivery_address.dart';
import 'package:coffee_shop_app/features/order/presentation/views/widgets/order_switch_deliver_pick_up.dart';
import 'package:coffee_shop_app/features/order/presentation/views/widgets/order_view_custom_app_bar.dart';
import 'package:coffee_shop_app/shared/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: kPrimaryPadding,
            child: Column(
              children: [
                OrderViewCustomAppBar(),
                SizedBox(height: 24),
                OrderSwitchDeliverPickUp(),
                SizedBox(height: 24),
                OrderDeliveryAddress(),
                CustomDivider(),
                CoffeeIncrementDecrement(),
                SizedBox(height: 16),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 4,
            decoration: const BoxDecoration(color: Color(0xFFF9F2ED)),
          ),
        ],
      ),
    );
  }
}
