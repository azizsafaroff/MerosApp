import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meros/models/constants.dart';

class NavigationButton extends StatelessWidget {
  final String text;
  final String icon;
  final String activeIcon;
  final bool active;
  final VoidCallback press;

  const NavigationButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.active,
    required this.press,
    required this.activeIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Column(
        children: [
          SvgPicture.asset(
            active ? activeIcon : icon,
            width: 24.0,
          ),
          const SizedBox(
            height: 6.0,
          ),
          Text(
            text,
            style: TextStyle(
              color: active ? kPrimaryColor : kGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
