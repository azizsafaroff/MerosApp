import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/details/category_open/open_category_screen.dart';

import 'category_list_item_widget.dart';

class OpenCategoryWidget extends StatelessWidget {
  final String title;
  const OpenCategoryWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: 'Gilroy',
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        ...List.generate(
          4,
          (index) => OpenCategoryItemWidget(
            title: 'Научная литература',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OpenCategoryScreen(
                    title: 'Научная литература',
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Divider(
            color: kGreyColor,
          ),
        ),
      ],
    );
  }
}
