import 'package:coffee_shop_app/features/home/presentation/views/coffee_details_view.dart';
import 'package:coffee_shop_app/features/order/presentation/views/order_view.dart';
import 'package:coffee_shop_app/shared/widgets/custom_bottom_navigation_bar.dart';
import 'package:coffee_shop_app/features/home/presentation/views/home_view.dart';
import 'package:coffee_shop_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    // Splash View
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case CustomBottomNavigationBar.routeName:
      return MaterialPageRoute(
        builder: (context) => const CustomBottomNavigationBar(),
      );
    case CoffeeDetailsView.routeName:
      return MaterialPageRoute(builder: (context) => const CoffeeDetailsView());
    case OrderView.routeName:
      return MaterialPageRoute(builder: (context) => const OrderView());

    default:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
  }
}
