import 'package:flutter/material.dart';

class CategoryPressWidget extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback press;

  const CategoryPressWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
