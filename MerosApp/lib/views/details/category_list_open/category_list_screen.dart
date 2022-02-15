import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';

import 'components/category_list_widget.dart';

class OpenCategoryListScreen extends StatelessWidget {
  const OpenCategoryListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(
                  height: 12.0,
                ),
                Center(
                  child: Container(
                    width: 50.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      color: kGreyColor,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const OpenCategoryWidget(
                  title: 'Книги мира',
                );
              },
              childCount: 6,
            ),
          ),
        ],
      ),
    );
  }
}
