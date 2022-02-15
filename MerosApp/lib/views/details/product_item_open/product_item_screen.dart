import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/widgets/ad_widget.dart';
import 'package:meros/views/widgets/custom_footer_widget.dart';
import 'package:meros/views/widgets/product_item_widget.dart';
import 'package:meros/views/widgets/top_category_widget.dart';

import 'components/poduct_tab_widget.dart';
import 'components/product_comment_item_widget.dart';
import 'components/product_comment_widget.dart';
import 'components/product_image_widget.dart';
import 'components/product_photo_widget.dart';
import 'components/product_title_widget.dart';

class ProductItemScreen extends StatelessWidget {
  const ProductItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                const [
                  ProductImageWidget(),
                  ProductTitleWidget(),
                  ProductTabWidget(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: TopCategoryWidget(
                      title: 'С этим товаром смотрят',
                      press: null,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                  mainAxisExtent: 260.0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) => ProductItemWidget(
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductItemScreen(),
                        ),
                      );
                    },
                  ),
                  childCount: 4,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 18.0,
                        ),
                        AdWidget(
                          image: 'assets/images/modern_design_image.png',
                          height: 70.0,
                          press: () {},
                        ),
                        const SizedBox(
                          height: 18.0,
                        ),
                        const ProductCommentWidget(),
                      ],
                    ),
                  ),
                  const ProductPhotosWidget(),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return const ProductCommentItemWidget();
                },
                childCount: 4,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: kPrimaryDarkColor,
                        padding: const EdgeInsets.symmetric(
                          vertical: 12.0,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Показать больше отзывов",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    const TopCategoryWidget(
                      title: 'Вы смотрели',
                      press: null,
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                  mainAxisExtent: 260.0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) => ProductItemWidget(
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductItemScreen(),
                        ),
                      );
                    },
                  ),
                  childCount: 4,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SizedBox(
                    height: 24.0,
                  ),
                  const CustomFooterWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
