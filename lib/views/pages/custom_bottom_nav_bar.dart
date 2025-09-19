import 'package:ecommerce_app/views/pages/cart_page.dart';
import 'package:ecommerce_app/views/pages/favorite_page.dart';
import 'package:ecommerce_app/views/pages/home_page.dart';
import 'package:ecommerce_app/views/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  late final PersistentTabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        stateManagement: true,
        handleAndroidBackButtonPress: true,

        controller: _controller,
        tabs: [
          PersistentTabConfig(
            screen: const HomePage(),
            item: ItemConfig(
              activeForegroundColor: Colors.blue,
              icon: const Icon(Icons.home),
              inactiveIcon: const Icon(Icons.home_outlined),
              title: "Home",
            ),
          ),
          PersistentTabConfig(
            screen: const CartPage(),
            item: ItemConfig(
              inactiveIcon: const Icon(Icons.shopping_bag_outlined),
              icon: const Icon(Icons.shopping_bag),
              title: "Cart",
            ),
          ),
          PersistentTabConfig(
            screen: const FavoritePage(),
            item: ItemConfig(
              inactiveIcon: const Icon(Icons.favorite_border_outlined),
              icon: const Icon(Icons.favorite),
              title: "Settings",
            ),
          ),
          PersistentTabConfig(
            screen: const ProfilePage(),
            item: ItemConfig(
              icon: const Icon(Icons.person_2),
              inactiveIcon: const Icon(Icons.person_2_outlined),
              title: "Settings",
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) =>
            Style6BottomNavBar(navBarConfig: navBarConfig),
      ),
    );
  }
}
