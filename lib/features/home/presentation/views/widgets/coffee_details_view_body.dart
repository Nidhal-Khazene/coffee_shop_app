import 'package:coffee_shop_app/features/home/presentation/views/widgets/coffee_details_custom_app_bar.dart';
import 'package:flutter/material.dart';

class CoffeeDetailsViewBody extends StatelessWidget {
  const CoffeeDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [CoffeeDetailsCustomAppBar()]),
    );
  }
}
