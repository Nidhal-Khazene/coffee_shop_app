import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class CategoryChips extends StatefulWidget {
  const CategoryChips({super.key});

  @override
  State<CategoryChips> createState() => _CategoryChipsState();
}

class _CategoryChipsState extends State<CategoryChips> {
  int _selectedIndex = 0;

  final List<String> categories = [
    "All Coffee ",
    "Machiato",
    "Latte",
    "Americano",
    "Cappuccino",
    "Espresso",
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.bounceInOut,
      height: 50, // fixed height for horizontal chips
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          final bool isSelected = _selectedIndex == index;

          return ChoiceChip(
            pressElevation: 0,
            elevation: 0,
            showCheckmark: false,
            label: Text(categories[index]),
            selected: isSelected,
            onSelected: (_) {
              setState(() {
                _selectedIndex = index;
              });
            },
            backgroundColor: const Color(0x59EDEDED),
            selectedColor: ColorsData.kPrimary,
            labelStyle: isSelected
                ? AppStyles.semiBold14.copyWith(color: Colors.white)
                : AppStyles.regular14.copyWith(color: const Color(0xFF303030)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
              side: const BorderSide(color: Colors.transparent, width: 1),
            ),
          );
        },
      ),
    );
  }
}
