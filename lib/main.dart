import 'package:coffee_shop_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const CoffeeShop());
}

class CoffeeShop extends StatelessWidget {
  const CoffeeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorsData.kScaffoldBgColor,
        fontFamily: GoogleFonts.sora().fontFamily,
      ),
    );
  }
}
