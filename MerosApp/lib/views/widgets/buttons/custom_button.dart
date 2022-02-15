import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final dynamic icon;
  final double? size;
  final Color? color;
  final VoidCallback press;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.press,
    this.size,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(4.0),
        child: icon is String
            ? SvgPicture.asset(
                icon,
                width: size,
                color: color,
              )
            : Icon(
                icon,
                color: color,
                size: size ?? 28.0,
              ),
      ),
    );
  }
}
