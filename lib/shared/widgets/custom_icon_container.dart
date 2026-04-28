import 'package:flutter/material.dart';

class CustomIconContainer extends StatelessWidget {
  const CustomIconContainer({super.key, required this.child, this.onTap});
  final Widget child;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: ShapeDecoration(
          color: const Color(0xFFEDEDED),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Center(child: child),
      ),
    );
  }
}
