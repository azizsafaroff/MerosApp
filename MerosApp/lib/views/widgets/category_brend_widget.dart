
import 'package:flutter/material.dart';

class CategoryBrendWidget extends StatelessWidget {
  const CategoryBrendWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/brend_image.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
