import 'package:coffee_shop_app/core/utils/assets.dart';
import 'package:coffee_shop_app/features/delivery/presentation/views/widgets/delivery_custom_app_bar.dart';
import 'package:coffee_shop_app/features/delivery/presentation/views/widgets/driver_detail_bottom_view.dart';
import 'package:flutter/material.dart';

class DeliveryViewBody extends StatelessWidget {
  const DeliveryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Image.asset(
            Assets.imagesMapWithDeliverLocation,
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
          top: 24 + 44,
          left: 24,
          right: 24,
          child: DeliveryCustomAppBar(),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: const DriverDetailBottomView(),
        ),
      ],
    );
  }
}
