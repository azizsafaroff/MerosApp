import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';

class NavigationBarButton extends StatelessWidget {
  final String title;
  final VoidCallback press;
  const NavigationBarButton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 4.0,
        horizontal: 16.0,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kPrimaryDarkColor,
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
        onPressed: press,
      ),
    );
  }
}
