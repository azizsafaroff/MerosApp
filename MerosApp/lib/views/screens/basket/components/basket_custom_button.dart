import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meros/models/constants.dart';

class BasketCustomButton extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback press;
  final bool active;
  const BasketCustomButton({
    Key? key,
    required this.title,
    required this.press,
    required this.icon,
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            color: active ? kPrimaryColor : kGreyColor,
            width: 22.0,
          ),
          const SizedBox(
            width: 4.0,
          ),
          Text(
            title,
            style: TextStyle(
              color: active ? kPrimaryColor : kGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
