import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/widgets/buttons/custom_button.dart';

class ProfileLocationWIdget extends StatelessWidget {
  const ProfileLocationWIdget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16.0,
        ),
        Row(
          children: [
            SvgPicture.asset("assets/icons/location.svg"),
            const SizedBox(
              width: 8.0,
            ),
            const Text(
              'Ташкент',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: kPrimaryDarkColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8.0,
        ),
        _buildItemWidget("Стоимость доставки", () {}),
        const SizedBox(
          height: 4.0,
        ),
        _buildItemWidget("Для меня", () {}),
        const SizedBox(
          height: 4.0,
        ),
      ],
    );
  }

  Row _buildItemWidget(String tite, VoidCallback pres) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tite,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        CustomButton(
          icon: CupertinoIcons.forward,
          size: 20.0,
          color: kGreyColor,
          press: pres,
        ),
      ],
    );
  }
}
