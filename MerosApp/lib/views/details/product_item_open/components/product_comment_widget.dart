import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/widgets/top_category_widget.dart';

import '../product_comment_screen.dart';
import 'product_write_comment_widget.dart';

class ProductCommentWidget extends StatelessWidget {
  const ProductCommentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TopCategoryWidget(
          title: 'Отзывы',
          press: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ProductCommentScreen(),
              ),
            );
          },
        ),
        const SizedBox(
          height: 8.0,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: kPrimaryDarkColor,
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
            ),
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const ProductWriteCommentWidget(),
            );
          },
          child: const Text(
            'Написать отзыв',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 18.0,
        ),
      ],
    );
  }
}
