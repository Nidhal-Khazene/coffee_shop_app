import 'package:coffee_shop_app/core/utils/colors.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class OrderSwitchDeliverPickUp extends StatefulWidget {
  const OrderSwitchDeliverPickUp({super.key});

  @override
  State<OrderSwitchDeliverPickUp> createState() =>
      _OrderSwitchDeliverPickUpState();
}

class _OrderSwitchDeliverPickUpState extends State<OrderSwitchDeliverPickUp> {
  bool isDeliver = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(4),
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        children: [
          _buildItem(
            title: 'Deliver',
            selected: isDeliver,
            onTap: () {
              setState(() => isDeliver = true);
            },
          ),
          const SizedBox(width: 8),
          _buildItem(
            title: 'Pick Up',
            selected: !isDeliver,
            onTap: () {
              setState(() => isDeliver = false);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildItem({
    required String title,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          decoration: BoxDecoration(
            color: selected ? ColorsData.kPrimary : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              title,
              style: selected
                  ? AppStyles.semiBold16.copyWith(color: Colors.white)
                  : AppStyles.regular14,
            ),
          ),
        ),
      ),
    );
  }
}
