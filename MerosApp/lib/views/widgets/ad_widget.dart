import 'package:flutter/material.dart';

class AdWidget extends StatelessWidget {
  final double height;
  final String image;
  final VoidCallback press;
  const AdWidget({
    Key? key,
    required this.height,
    required this.image,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: InkWell(
        onTap: press,
        child: Container(
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
