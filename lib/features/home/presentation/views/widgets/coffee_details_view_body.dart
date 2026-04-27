import 'package:coffee_shop_app/core/constants/constants.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:coffee_shop_app/features/home/presentation/views/widgets/coffee_details_custom_app_bar.dart';
import 'package:coffee_shop_app/features/home/presentation/views/widgets/coffee_details_description.dart';
import 'package:coffee_shop_app/features/home/presentation/views/widgets/coffee_details_view_image.dart';
import 'package:coffee_shop_app/features/home/presentation/views/widgets/coffee_details_view_information.dart';
import 'package:coffee_shop_app/features/home/presentation/views/widgets/size_selector.dart';
import 'package:coffee_shop_app/shared/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

class CoffeeDetailsViewBody extends StatelessWidget {
  const CoffeeDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: kPrimaryPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CoffeeDetailsCustomAppBar(),
                const SizedBox(height: 24),
                const CoffeeDetailsViewImage(),
                const SizedBox(height: 16),
                const CoffeeDetailsViewInformation(),
                const CustomDivider(),
                const CoffeeDetailsDescription(),
                const SizedBox(height: 24),
                Text('Size', style: AppStyles.semiBold16),
                const SizedBox(height: 16),
                const SizeSelector(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
