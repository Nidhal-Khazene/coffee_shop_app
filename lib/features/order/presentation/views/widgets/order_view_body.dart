import 'package:coffee_shop_app/core/constants/constants.dart';
import 'package:coffee_shop_app/features/order/presentation/views/widgets/order_switch_deliver_pick_up.dart';
import 'package:coffee_shop_app/features/order/presentation/views/widgets/order_view_custom_app_bar.dart';
import 'package:flutter/material.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: kPrimaryPadding,
        child: Column(
          children: [
            OrderViewCustomAppBar(),
            SizedBox(height: 24),
            OrderSwitchDeliverPickUp(),
          ],
        ),
      ),
    );
  }
}
