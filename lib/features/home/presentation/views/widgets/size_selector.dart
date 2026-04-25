import 'package:coffee_shop_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class SizeSelector extends StatefulWidget {
  const SizeSelector({super.key});

  @override
  State<SizeSelector> createState() => _SizeSelectorState();
}

class _SizeSelectorState extends State<SizeSelector> {
  String selectedSize = "M";

  final List<String> sizes = ["S", "M", "L"];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: sizes.map((size) {
        final isSelected = size == selectedSize;

        return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedSize = size;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: isSelected
                      ? Colors.orange.shade50
                      : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isSelected
                        ? ColorsData.kPrimary
                        : Colors.transparent,
                    width: 1.5,
                  ),
                ),
                child: Center(
                  child: Text(
                    size,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: isSelected ? ColorsData.kPrimary : Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
