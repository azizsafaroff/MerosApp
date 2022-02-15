import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/widgets/buttons/custom_button.dart';

import '../profile_saved_card_open_screen.dart';

List<String> _items = [
  "Visa **4321",
];

class ProfileSavedCardWidget extends StatelessWidget {
  const ProfileSavedCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ...List.generate(
            _items.length,
            (index) => _buildCardWidget(index),
          ),
          _buildAddCardWidget(),
        ],
      ),
    );
  }

  Widget _buildAddCardWidget() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileAddCardScreen(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(
            color: kGreyColor.withOpacity(.2),
          ),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 14.0,
          horizontal: 16.0,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/icons/ic_add_card.svg',
              width: 40.0,
            ),
            const SizedBox(
              width: 16.0,
            ),
            const Text(
              'Добавить карту',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildCardWidget(int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
          color: kGreyColor.withOpacity(.2),
        ),
      ),
      margin: const EdgeInsets.only(
        bottom: 16.0,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 14.0,
        horizontal: 16.0,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/ic_visa.svg',
            width: 60.0,
          ),
          const SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: Text(
              _items[index].toString(),
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          CustomButton(
            size: 20.0,
            icon: 'assets/icons/ic_trash.svg',
            press: () {},
          ),
        ],
      ),
    );
  }
}
