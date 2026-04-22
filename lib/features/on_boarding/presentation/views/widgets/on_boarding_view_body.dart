import 'package:coffee_shop_app/core/constants/constants.dart';
import 'package:coffee_shop_app/core/utils/assets.dart';
import 'package:coffee_shop_app/core/utils/colors.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:coffee_shop_app/core/widgets/custom_button.dart';
import 'package:coffee_shop_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Positioned.fill(
            child: Image.asset(Assets.imagesOnBoardingBackgroundImage),
          ),
        ),
        Positioned(
          child: Padding(
            padding: kPrimaryPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Fall in Love with Coffee in Blissful Delight!",
                      textAlign: TextAlign.center,
                      style: AppStyles.semiBold32.copyWith(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
                      textAlign: TextAlign.center,
                      style: AppStyles.regular14.copyWith(
                        color: ColorsData.kFontThird,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, HomeView.routeName);
                  },
                  content: 'Get Started',
                ),
                const SizedBox(height: 64),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
