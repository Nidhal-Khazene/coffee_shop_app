import 'package:coffee_shop_app/core/constants/constants.dart';
import 'package:coffee_shop_app/core/utils/assets.dart';
import 'package:coffee_shop_app/core/utils/colors.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void showFalseSnackBar(
  BuildContext context, {
  required String errorMessage,
  int? secondsDuration,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      elevation: 0,
      backgroundColor: Colors.white,
      content: Row(
        children: [
          SvgPicture.asset(Assets.imagesHelperFalseIcon, height: 20, width: 20),
          const SizedBox(width: 12),
          Text(
            errorMessage,
            style: AppStyles.regular14.copyWith(color: ColorsData.kFontPrimary),
          ),
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
