import 'package:coffee_shop_app/core/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontallPadding),
      child: Divider(color: Color(0xFFE3E3E3), height: 32, thickness: 1),
    );
  }
}
