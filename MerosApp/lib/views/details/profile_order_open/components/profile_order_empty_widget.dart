import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meros/models/constants.dart';

class ProfileOrderEmptyWidget extends StatelessWidget {
  const ProfileOrderEmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 34.0),
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/icons/ic_box.svg',
            width: 60.0,
          ),
          const Text(
            'У вас пока нет\nзаказов',
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
            'Выберите другие параметры фильтрации или оформите новый заказ',
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
              Navigator.pop(context);
              currentScreenIndex = 0;
              appState!();
            },
            style: ElevatedButton.styleFrom(
              primary: kPrimaryDarkColor,
            ),
            child: const Text(
              'Начать покупки',
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
