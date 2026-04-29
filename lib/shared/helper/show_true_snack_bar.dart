import 'package:coffee_shop_app/core/constants/constants.dart';
import 'package:coffee_shop_app/core/utils/assets.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void showTrueSnackBar(
  BuildContext context, {
  required String message,
  int? secondsDuration,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      elevation: 0,
      backgroundColor: Colors.white,
      content: Row(
        children: [
          SvgPicture.asset(Assets.imagesHelperTrueIcon),
          const SizedBox(width: 12),
          Text(message, style: AppStyles.regular14),
        ],
      ),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(
        vertical: 7,
        horizontal: kHorizontallPadding,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      duration: Duration(seconds: secondsDuration ?? 1),
    ),
  );
}
