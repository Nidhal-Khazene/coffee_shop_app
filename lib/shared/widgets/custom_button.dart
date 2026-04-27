import 'package:coffee_shop_app/core/utils/colors.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.content,
    this.onTap,
    this.bgColor,
    this.textStyle,
    this.width,
    this.height,
  });
  final String content;
  final void Function()? onTap;
  final Color? bgColor;
  final TextStyle? textStyle;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width ?? double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: ShapeDecoration(
          color: bgColor ?? ColorsData.kPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Center(
          child: Text(
            content,
            style:
                textStyle ?? AppStyles.semiBold16.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
