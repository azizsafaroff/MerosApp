import 'package:flutter/material.dart';
import 'package:meros/views/details/profile_order_open/profile_order_open_screen.dart';
import 'package:meros/views/details/profile_saved_card_open/profile_saved_card_open_screen.dart';
import 'package:meros/views/screens/basket/basket_screen.dart';
import 'package:meros/views/screens/category/category_screen.dart';
import 'package:meros/views/screens/favorite/favorite_screen.dart';
import 'package:meros/views/screens/home/home_screen.dart';
import 'package:meros/views/screens/profile/profile_screen.dart';

const Color kPrimaryColor = Color(0xFFF5921C);
const Color kGreyColor = Color(0xFF8D909B);
const Color kPrimaryDarkColor = Color(0xFF32386B);
const Color kSalaryColor = Color(0xFFF5921C);
const Color kOldPriceColor = Color(0xFFF83333);

VoidCallback? appState;

int currentScreenIndex = 0;

// ignore: non_constant_identifier_names
List<Map<String, dynamic>> PROFILE_SCREEN_VARIABLES = [
  {
    "title": "Центр коммуникации",
    "items": [
      "Уведомления",
      "Сообщения",
      "Помощь",
    ],
  },
  {
    "title": "Популярные вопросы",
    "items": [
      "Способы доставки",
      "Способы оплаты",
    ],
  },
  {
    "title": "Приложение",
    "items": [
      "Возврат товаров",
      "Аккаунт и безопасность",
      "О приложение",
    ],
  },
];

List<Map<String, dynamic>> PROFILE_REGISTERED_SCREEN_VARIABLES = [
  {
    "title": "Покупки",
    "items": [
      {
        "title": "Заказы",
        "press": (context) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileOrderOpenScreen(),
            ),
          );
        },
      },
      {
        "title": "Купленные товары",
        "press": (context) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileOrderOpenScreen(),
            ),
          );
        },
      },
      {
        "title": "Регулярные доставки",
        "press": (context) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileOrderOpenScreen(),
            ),
          );
        },
      },
      {
        "title": "Возвраты",
        "press": (context) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileOrderOpenScreen(),
            ),
          );
        },
      },
      {
        "title": "Цифровые товары",
        "press": (context) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileOrderOpenScreen(),
            ),
          );
        },
      },
      {
        "title": "Для меня",
        "press": (context) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileOrderOpenScreen(),
            ),
          );
        },
      },
    ],
  },
  {
    "title": "Личная информация",
    "items": [
      {
        "title": "Мои отзывы",
        "press": (context) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileOrderOpenScreen(),
            ),
          );
        },
      },
      {
        "title": "Баллы",
        "press": (context) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileOrderOpenScreen(),
            ),
          );
        },
      },
      {
        "title": "Кодовое слово",
        "press": (context) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileOrderOpenScreen(),
            ),
          );
        },
      },
      {
        "title": "Meros Дисконт %",
        "press": (context) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileOrderOpenScreen(),
            ),
          );
        },
      },
      {
        "title": "Сохранённые карты",
        "press": (context) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileSavedCardOpenScreen(),
            ),
          );
        },
      },
      {
        "title": "Meros Card",
        "press": (context) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileOrderOpenScreen(),
            ),
          );
        },
      },
    ],
  },
];

const List<Widget> screens = [
  HomeScreen(),
  CategoryScreen(),
  BasketScreen(),
  FavoriteScreen(),
  ProfileScreen(),
];
