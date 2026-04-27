import 'package:coffee_shop_app/core/utils/colors.dart';
import 'package:coffee_shop_app/core/utils/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CoffeeDetailsDescription extends StatefulWidget {
  const CoffeeDetailsDescription({super.key});

  @override
  State<CoffeeDetailsDescription> createState() =>
      _CoffeeDetailsDescriptionState();
}

class _CoffeeDetailsDescriptionState extends State<CoffeeDetailsDescription>
    with TickerProviderStateMixin {
  bool isExpanded = false;

  final String text =
      'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the foam on top gives it a rich texture and balanced flavor loved worldwide.';

  @override
  Widget build(BuildContext context) {
    final String displayText = isExpanded ? text : _truncateText(text, 100);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Description', style: AppStyles.semiBold16),
        const SizedBox(height: 8),
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          alignment: Alignment.topLeft,
          child: RichText(
            text: TextSpan(
              style: AppStyles.light14.copyWith(color: Colors.grey.shade600),
              children: [
                TextSpan(text: displayText),
                TextSpan(
                  text: isExpanded ? ' Show Less' : ' Read More',
                  style: AppStyles.semiBold14.copyWith(
                    color: ColorsData.kPrimary,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  String _truncateText(String text, int maxLength) {
    if (text.length <= maxLength) return text;
    return '${text.substring(0, maxLength)}...';
  }
}
