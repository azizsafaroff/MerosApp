import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';

class FavoriteEmptyWidget extends StatelessWidget {
  const FavoriteEmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Column(
        children: [
          const Text(
            'В избранном\nпока ничего нет',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Text(
            'Добавляйте товары в Избранное с помощью',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kGreyColor,
            ),
          ),
          const SizedBox(
            height: 18.0,
          ),
          ElevatedButton(
            onPressed: () {
              currentScreenIndex = 0;
              appState!();
            },
            style: ElevatedButton.styleFrom(
              primary: kPrimaryDarkColor,
            ),
            child: const Text(
              'На главную',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
