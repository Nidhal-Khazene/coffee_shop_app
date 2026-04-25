import 'package:coffee_shop_app/core/constants/constants.dart';
import 'package:coffee_shop_app/features/home/presentation/views/widgets/category_chips.dart';
import 'package:coffee_shop_app/features/home/presentation/views/widgets/coffee_item.dart';
import 'package:coffee_shop_app/features/home/presentation/views/widgets/custom_home_header.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Pin the header as a non-scrolling sliver
        const SliverToBoxAdapter(child: CustomHomeHeader()),
        const SliverToBoxAdapter(child: SizedBox(height: 110)),

        // Wrap padded content in SliverPadding
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontallPadding),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              const CategoryChips(),
              const SizedBox(height: 16),
              const CoffeeItem(),
            ]),
          ),
        ),
      ],
    );
  }
}
