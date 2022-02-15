import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';

class CategoryItemWidget extends StatelessWidget {
  final String title;
  final VoidCallback press;
  const CategoryItemWidget({
    Key? key,
    required this.press,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.only(
          top: 8.0,
          left: 14.0,
          right: 14.0,
          bottom: 4.0,
        ),
        decoration: BoxDecoration(
          color: kGreyColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/book_image.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
