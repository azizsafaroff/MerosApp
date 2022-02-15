
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meros/models/constants.dart';

class ProfileSavedCardEmptyWidget extends StatelessWidget {
  const ProfileSavedCardEmptyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/ic_lupa.svg',
            width: 60.0,
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            'У вас нет сохраненных карт',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24.0,
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          const Text(
            'Добавьте карту, чтобы использовать\nее для оплаты',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.0,
              color: kGreyColor,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: kPrimaryDarkColor,
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 24.0,
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Добавить карту',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}