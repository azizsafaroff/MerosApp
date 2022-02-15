import 'package:flutter/material.dart';
import 'package:meros/views/widgets/top_category_widget.dart';

class ProductPhotosWidget extends StatelessWidget {
  const ProductPhotosWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TopCategoryWidget(
            title: 'Фотографии покупателей',
            press: null,
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        SizedBox(
          height: 70.0,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 16.0),
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(
                  right: 8.0,
                ),
                width: 70.0,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/images/book_1.png"),
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 24.0,
        ),
      ],
    );
  }
}
