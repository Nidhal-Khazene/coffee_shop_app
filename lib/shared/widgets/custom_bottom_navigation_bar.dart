import 'package:coffee_shop_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../features/home/presentation/views/home_view.dart';

// ─── Constants ───────────────────────────────────────────────────────────────

class _NavBarConstants {
  const _NavBarConstants._();

  static const double iconSize = 20;
  static const double notifIconSize = 24;
  static const double indicatorWidth = 10;
  static const double indicatorHeight = 5;
  static const double indicatorRadius = 18;
  static const Color indicatorColor = Color(0xFFC67C4E);
  static const Color backgroundColor = Colors.white;
}

// ─── Nav Item Model ──────────────────────────────────────────────────────────

class _NavItem {
  const _NavItem({
    required this.activeIcon,
    required this.inactiveIcon,
    required this.iconSize,
  });

  final IconData activeIcon;
  final IconData inactiveIcon;
  final double iconSize;
}

// ─── Nav Items Definition ────────────────────────────────────────────────────

const List<_NavItem> _navItems = [
  _NavItem(
    activeIcon: IconlyBold.home,
    inactiveIcon: IconlyLight.home,
    iconSize: _NavBarConstants.iconSize,
  ),
  _NavItem(
    activeIcon: IconlyBold.heart,
    inactiveIcon: IconlyLight.heart,
    iconSize: _NavBarConstants.iconSize,
  ),
  _NavItem(
    activeIcon: IconlyBold.bag,
    inactiveIcon: IconlyLight.bag,
    iconSize: _NavBarConstants.iconSize,
  ),
  _NavItem(
    activeIcon: IconlyBold.notification,
    inactiveIcon: IconlyLight.notification,
    iconSize: _NavBarConstants.notifIconSize,
  ),
];

// ─── Active Indicator Widget ─────────────────────────────────────────────────

class _ActiveIndicator extends StatelessWidget {
  const _ActiveIndicator();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _NavBarConstants.indicatorWidth,
      height: _NavBarConstants.indicatorHeight,
      decoration: ShapeDecoration(
        color: _NavBarConstants.indicatorColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_NavBarConstants.indicatorRadius),
        ),
      ),
    );
  }
}

// ─── Single Nav Icon Widget ───────────────────────────────────────────────────

class _NavIconWidget extends StatelessWidget {
  const _NavIconWidget({
    required this.item,
    required this.isSelected,
    required this.selectedColor,
    required this.disabledColor,
  });

  final _NavItem item;
  final bool isSelected;
  final Color selectedColor;
  final Color disabledColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          isSelected ? item.activeIcon : item.inactiveIcon,
          size: item.iconSize,
          color: isSelected ? selectedColor : disabledColor,
        ),
        const SizedBox(height: 4),
        isSelected
            ? const _ActiveIndicator()
            : const SizedBox(height: _NavBarConstants.indicatorHeight),
      ],
    );
  }
}

// ─── Navigation Bar Destinations Builder ─────────────────────────────────────

List<NavigationDestination> _buildDestinations({
  required int selectedIndex,
  required Color selectedColor,
  required Color disabledColor,
}) {
  return List.generate(
    _navItems.length,
    (index) => NavigationDestination(
      icon: _NavIconWidget(
        item: _navItems[index],
        isSelected: selectedIndex == index,
        selectedColor: selectedColor,
        disabledColor: disabledColor,
      ),
      label: '',
    ),
  );
}

// ─── Bottom Nav Bar Container ─────────────────────────────────────────────────

class _NavBarContainer extends StatelessWidget {
  const _NavBarContainer({
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.selectedColor,
    required this.disabledColor,
  });

  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final Color selectedColor;
  final Color disabledColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _NavBarConstants.backgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            spreadRadius: 2,
            blurRadius: 25,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        child: NavigationBar(
          indicatorColor: Colors.transparent,
          backgroundColor: _NavBarConstants.backgroundColor,
          selectedIndex: selectedIndex,
          onDestinationSelected: onDestinationSelected,
          destinations: _buildDestinations(
            selectedIndex: selectedIndex,
            selectedColor: selectedColor,
            disabledColor: disabledColor,
          ),
        ),
      ),
    );
  }
}

// ─── Main Widget ──────────────────────────────────────────────────────────────

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  static const routeName = "/bottomNav";

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
  ];

  void _onDestinationSelected(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: _NavBarContainer(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onDestinationSelected,
        selectedColor: ColorsData.kPrimary,
        disabledColor: Colors.grey.shade400,
      ),
    );
  }
}
