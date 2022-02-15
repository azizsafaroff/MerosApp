import 'package:flutter/material.dart';
import 'package:meros/views/details/category_brend_open/category_brend_screen.dart';
import 'package:meros/views/details/category_filter_open/category_filter_screen.dart';
import 'package:meros/views/details/category_list_open/category_list_screen.dart';
import 'package:meros/views/details/category_open/open_category_screen.dart';
import 'package:meros/views/details/product_item_open/product_item_screen.dart';
import 'package:meros/views/widgets/ad_with_text_widget.dart';
import 'package:meros/views/widgets/buttons/custom_button.dart';
import 'package:meros/views/widgets/category_brend_widget.dart';
import 'package:meros/views/widgets/category_item_widget.dart';
import 'package:meros/views/widgets/category_press_widget.dart';
import 'package:meros/views/widgets/ad_widget.dart';
import 'package:meros/views/widgets/custom_footer_widget.dart';
import 'package:meros/views/widgets/product_item_widget.dart';
import 'package:meros/views/widgets/search_widget.dart';
import 'package:meros/views/widgets/top_category_widget.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          children: [
            CustomButton(
              icon: 'assets/icons/ic_menu.svg',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CategoryFilterScreen(),
                  ),
                );
              },
            ),
            const SizedBox(
              width: 16.0,
            ),
            const Expanded(
              child: SearchWidget(),
            ),
          ],
        ),
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
                  AdWidget(
                    image: 'assets/images/sale_image.png',
                    height: 140.0,
                    press: () {},
                  ),
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
                childCount: 8,
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
                    'Специально для вас',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  AdWidget(
                    image: 'assets/images/recommend_image.png',
                    height: 120.0,
                    press: () {},
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  AdWidget(
                    image: 'assets/images/recommend_image.png',
                    height: 120.0,
                    press: () {},
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  AdWidget(
                    image: 'assets/images/recommend_image.png',
                    height: 120.0,
                    press: () {},
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  TopCategoryWidget(
                    title: 'Лучшие предложения!',
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OpenCategoryScreen(
                            title: 'Лучшие предложения!',
                          ),
                        ),
                      );
                    },
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
                        builder: (context) => ProductItemScreen(),
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
                    image: 'assets/images/apliance_image.png',
                    height: 70.0,
                    press: () {},
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  TopCategoryWidget(
                    title: 'Все товары со скидками!',
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OpenCategoryScreen(
                            title: 'Все товары со скидками!',
                          ),
                        ),
                      );
                    },
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
                    image: 'assets/images/fastive_image.png',
                    height: 70.0,
                    press: () {},
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const TopCategoryWidget(
                    title: 'Популярные категории',
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
                crossAxisCount: 3,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => CategoryItemWidget(
                  title: 'Ювелирные изделия',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OpenCategoryScreen(
                          title: 'Ювелирные изделия',
                        ),
                      ),
                    );
                  },
                ),
                childCount: 6,
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
                  AdMobileWidget(),
                  const SizedBox(
                    height: 16.0,
                  ),
                  AdMobileWidget(),
                  const SizedBox(
                    height: 16.0,
                  ),
                  AdMobileWidget(),
                  const SizedBox(
                    height: 24.0,
                  ),
                  const TopCategoryWidget(
                    title: 'Рекомендации для вас',
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
                    image: 'assets/images/modern_design_image.png',
                    height: 70.0,
                    press: () {},
                  ),
                  const SizedBox(
                    height: 24.0,
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
                    image: 'assets/images/modern_design_image.png',
                    height: 70.0,
                    press: () {},
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  const TopCategoryWidget(
                    title: 'Бренды',
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
                crossAxisCount: 3,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                mainAxisExtent: 104.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => const CategoryBrendWidget(),
                childCount: 6,
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
