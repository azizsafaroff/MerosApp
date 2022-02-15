import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/details/product_item_open/product_item_screen.dart';
import 'package:meros/views/widgets/ad_widget.dart';
import 'package:meros/views/widgets/ad_with_text_widget.dart';
import 'package:meros/views/widgets/buttons/custom_button.dart';
import 'package:meros/views/widgets/category_brend_widget.dart';
import 'package:meros/views/widgets/custom_footer_widget.dart';
import 'package:meros/views/widgets/product_item_widget.dart';
import 'package:meros/views/widgets/search_widget.dart';
import 'package:meros/views/widgets/top_category_widget.dart';

import 'components/category_brend_title_widget.dart';

class CategoryBrendScreen extends StatelessWidget {
  const CategoryBrendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            CustomButton(
              icon: 'assets/icons/ic_back.svg',
              press: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              width: 16.0,
            ),
            const Expanded(child: SearchWidget()),
          ],
        ),
        shadowColor: kGreyColor.withOpacity(.1),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const CategoryBrendTitleWidget(),
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
                        builder: (context) => ProductItemWidget(
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProductItemScreen(),
                              ),
                            );
                          },
                        ),
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
                const [
                  SizedBox(
                    height: 24.0,
                  ),
                  AdMobileWidget(),
                  SizedBox(
                    height: 16.0,
                  ),
                  AdMobileWidget(),
                  SizedBox(
                    height: 16.0,
                  ),
                  AdMobileWidget(),
                ],
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
