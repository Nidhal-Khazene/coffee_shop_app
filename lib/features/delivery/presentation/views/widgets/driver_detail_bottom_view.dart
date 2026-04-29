import 'package:coffee_shop_app/core/utils/assets.dart';
import 'package:coffee_shop_app/core/utils/colors.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DriverDetailBottomView extends StatelessWidget {
  const DriverDetailBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.36,
      padding: const EdgeInsets.all(16),
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 45,
            height: 5,
            decoration: ShapeDecoration(
              color: const Color(0xFFE3E3E3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 2,
            children: [
              Text(
                '10 minutes left',
                style: AppStyles.semiBold16.copyWith(
                  color: ColorsData.kFontPrimary,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Delivery to ',
                      style: AppStyles.regular12.copyWith(
                        color: ColorsData.kFontThird,
                      ),
                    ),
                    TextSpan(
                      text: 'Jl. Kpg Sutoyo',
                      style: AppStyles.semiBold12.copyWith(
                        color: ColorsData.kFontPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            height: 4,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Expanded(
                  child: Container(
                    height: double.infinity,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF35C07D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF35C07D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF35C07D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFE3E3E3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              top: 8,
              left: 12,
              right: 16,
              bottom: 8,
            ),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFE3E3E3)),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 16,
              children: [
                Container(
                  width: 56,
                  height: 56,
                  padding: const EdgeInsets.all(14.25),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xFFE3E3E3),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Image.asset(Assets.imagesHelperDeliveryIcon),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    Text('Delivered your order', style: AppStyles.semiBold14),
                    SizedBox(
                      width: 243,
                      child: Text(
                        'We will deliver your goods to you in\nthe shortes possible time.',
                        style: AppStyles.light12.copyWith(
                          color: ColorsData.kFontThird,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 16,
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: Image.asset(Assets.imagesPerson).image,
                        fit: BoxFit.cover,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Text('Brooklyn Simmons', style: AppStyles.semiBold14),
                      Text(
                        'Personal Courier',
                        style: AppStyles.regular12.copyWith(
                          color: ColorsData.kFontThird,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: 44,
                height: 44,
                padding: const EdgeInsets.all(10),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFE3E3E3)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Center(child: Icon(Iconsax.call_calling)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
