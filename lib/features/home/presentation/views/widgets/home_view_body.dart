import 'package:coffee_shop_app/features/home/presentation/views/widgets/custom_home_header.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [CustomHomeHeader()]),
    );
  }
}
