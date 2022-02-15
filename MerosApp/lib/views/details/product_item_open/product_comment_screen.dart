import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/widgets/app_bar_text.dart';

import 'components/product_comment_item_widget.dart';
import 'components/product_write_comment_widget.dart';

class ProductCommentScreen extends StatelessWidget {
  const ProductCommentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: const AppBarText(title: "Отзывы"),
        shadowColor: kGreyColor.withOpacity(.1),
      ),
      body: ListView.builder(
        itemCount: 8,
        padding: const EdgeInsets.only(
          top: 16.0,
        ),
        itemBuilder: (context, index) {
          return const ProductCommentItemWidget();
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: ElevatedButton(
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
            "Написать отзыв",
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}