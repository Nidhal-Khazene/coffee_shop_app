import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:coffee_shop_app/features/home/presentation/views/widgets/coffee_item_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CoffeeItem extends StatelessWidget {
  const CoffeeItem({
    super.key,
    required this.name,
    required this.type,
    required this.image,
    required this.price,
  });
  final String name, type, image;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Derive image height from current widget width and the aspect ratio (140/128)
          final double imageHeight = constraints.maxWidth * (128 / 140);

          return Stack(
            children: [
              CoffeeItemImage(image: image),
              Positioned(
                top: imageHeight + 8,
                child: Text(name, style: AppStyles.semiBold16),
              ),
              Positioned(
                top: imageHeight + 28,
                child: Text(
                  type,
                  style: AppStyles.regular12.copyWith(
                    color: const Color(0xFFA2A2A2),
                  ),
                ),
              ),
              Positioned(
                top: imageHeight + 48,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$ $price', style: AppStyles.semiBold18),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFC67C4E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Icon(
                        Iconsax.add,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
