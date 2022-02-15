import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';

import 'components/navigation_button.dart';

class CustomNavigationBar extends StatelessWidget {
  final VoidCallback setStateCallback;
  const CustomNavigationBar({Key? key, required this.setStateCallback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavigationButton(
            text: 'Главная',
            icon: 'assets/icons/ic_home.svg',
            activeIcon: 'assets/icons/ic_home_fill.svg',
            active: currentScreenIndex == 0,
            press: () {
              currentScreenIndex = 0;
              appState!();
            },
          ),
          NavigationButton(
            text: 'Каталог',
            icon: 'assets/icons/ic_category.svg',
            activeIcon: 'assets/icons/ic_category_fill.svg',
            active: currentScreenIndex == 1,
            press: () {
              currentScreenIndex = 1;
              setStateCallback();
            },
          ),
          NavigationButton(
            text: 'Корзина',
            icon: 'assets/icons/ic_cart.svg',
            activeIcon: 'assets/icons/ic_cart_fill.svg',
            active: currentScreenIndex == 2,
            press: () {
              currentScreenIndex = 2;
              setStateCallback();
            },
          ),
          NavigationButton(
            text: 'Избранное',
            icon: 'assets/icons/ic_favorite.svg',
            activeIcon: 'assets/icons/ic_favorite_fill.svg',
            active: currentScreenIndex == 3,
            press: () {
              currentScreenIndex = 3;
              setStateCallback();
            },
          ),
          NavigationButton(
            text: 'Профиль',
            icon: 'assets/icons/ic_profile.svg',
            activeIcon: 'assets/icons/ic_profile_fill.svg',
            active: currentScreenIndex == 4,
            press: () {
              currentScreenIndex = 4;
              setStateCallback();
            },
          ),
        ],
      ),
    );
  }
}
