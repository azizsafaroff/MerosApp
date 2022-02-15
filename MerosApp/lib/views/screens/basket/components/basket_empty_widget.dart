import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meros/models/constants.dart';

class BasketEmptyWidget extends StatelessWidget {
  const BasketEmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/icons/ic_basket.svg',
            width: 80.0,
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            'Корзина пуста',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            'Воспользуйтесь поиском,чтобы найти\nвсё что нужно.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
