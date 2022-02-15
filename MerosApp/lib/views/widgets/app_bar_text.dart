import 'package:flutter/material.dart';

class AppBarText extends StatelessWidget {
  final String title;
  const AppBarText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontFamily: 'Gilroy',
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
