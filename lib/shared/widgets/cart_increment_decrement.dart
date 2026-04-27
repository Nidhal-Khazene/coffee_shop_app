import 'package:coffee_shop_app/core/utils/assets.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CartIncrementDecrement extends StatefulWidget {
  const CartIncrementDecrement({super.key});

  @override
  State<CartIncrementDecrement> createState() => _CartIncrementDecrementState();
}

class _CartIncrementDecrementState extends State<CartIncrementDecrement> {
  int quantity = 1;

  void increment() {
    setState(() => quantity++);
  }

  void decrement() {
    if (quantity > 1) {
      setState(() => quantity--);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(Assets.imagesCoffee1, height: 54, width: 54),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Caffe Mocha', style: AppStyles.semiBold16),
                  const SizedBox(height: 4),
                  Text(
                    'Deep Foam',
                    style: AppStyles.regular12.copyWith(
                      color: const Color(0xFFA2A2A2),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        /// RIGHT SIDE (Counter)
        Row(
          children: [
            _buildButton(icon: Icons.remove, onTap: decrement),

            AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              transitionBuilder: (child, animation) =>
                  ScaleTransition(scale: animation, child: child),
              child: Text(
                '$quantity',
                key: ValueKey(quantity),
                style: AppStyles.semiBold14,
              ),
            ),

            _buildButton(icon: Icons.add, onTap: increment),
          ],
        ),
      ],
    );
  }

  Widget _buildButton({required IconData icon, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFFF9F2ED)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(icon, size: 16, color: Colors.black),
      ),
    );
  }
}
