import 'package:coffee_shop_app/features/delivery/presentation/views/widgets/delivery_view_body.dart';
import 'package:flutter/material.dart';

class DeliveryView extends StatelessWidget {
  const DeliveryView({super.key});
  static const String routeName = "/delivery";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: DeliveryViewBody());
  }
}
