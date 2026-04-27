import 'package:coffee_shop_app/features/order/presentation/views/widgets/order_cash_wallet.dart';
import 'package:coffee_shop_app/features/order/presentation/views/widgets/order_view_body.dart';
import 'package:flutter/material.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});
  static const routeName = " order_view";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: OrderCashWallet(),
      body: SafeArea(child: OrderViewBody()),
    );
  }
}
