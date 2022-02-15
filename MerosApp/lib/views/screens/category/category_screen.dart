import 'package:flutter/material.dart';
import 'package:meros/views/details/category_brend_open/category_brend_screen.dart';
import 'package:meros/views/details/category_list_open/category_list_screen.dart';
import 'package:meros/views/details/product_item_open/product_item_screen.dart';
import 'package:meros/views/widgets/category_press_widget.dart';
import 'package:meros/views/widgets/ad_widget.dart';
import 'package:meros/views/widgets/custom_footer_widget.dart';
import 'package:meros/views/widgets/product_item_widget.dart';
import 'package:meros/views/widgets/search_widget.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const SearchWidget(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
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
                crossAxisCount: 4,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => CategoryPressWidget(
                  image: 'assets/images/category_image.png',
                  title: 'Книги',
                  press: () {
                    showMaterialModalBottomSheet(
                      duration: const Duration(milliseconds: 500),
                      context: context,
                      builder: (context) => const OpenCategoryListScreen(),
                    );
                  },
                ),
                childCount: 16,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SizedBox(
                    height: 16.0,
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
                crossAxisCount: 4,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => CategoryPressWidget(
                  image: 'assets/images/category_logo_image.png',
                  title: 'Meros Мерч Baba',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CategoryBrendScreen(),
                      ),
                    );
                  },
                ),
                childCount: 4,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SizedBox(
                    height: 24.0,
                  ),
                  AdWidget(
                    image: 'assets/images/interval_image.png',
                    height: 50.0,
                    press: () {},
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const Text(
                    'Рекомендации для вас',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
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
    );
  }
}
