import 'package:coffee_shop_app/core/constants/constants.dart';
import 'package:coffee_shop_app/features/home/presentation/views/widgets/category_chips.dart';
import 'package:coffee_shop_app/features/home/presentation/views/widgets/coffee_grid_view.dart';
import 'package:coffee_shop_app/features/home/presentation/views/widgets/custom_home_header.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHomeHeader(),
        SizedBox(height: 110),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontallPadding),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: CategoryChips()),
              // SliverToBoxAdapter(child: CoffeeGridView()),
            ],
          ),
        ),
      ],
    );
  }
}
