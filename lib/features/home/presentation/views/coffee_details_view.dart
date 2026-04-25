import 'package:coffee_shop_app/core/constants/constants.dart';
import 'package:coffee_shop_app/features/home/presentation/views/widgets/coffee_details_view_body.dart';
import 'package:flutter/material.dart';

class CoffeeDetailsView extends StatelessWidget {
  const CoffeeDetailsView({super.key});
  static const String routeName = "CoffeeDetailsView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPrimaryPadding,
          child: CoffeeDetailsViewBody(),
        ),
      ),
    );
  }
}
