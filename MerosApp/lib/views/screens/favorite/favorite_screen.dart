import 'package:flutter/material.dart';
import 'package:meros/views/details/product_item_open/product_item_screen.dart';
import 'package:meros/views/widgets/app_bar_text.dart';
import 'package:meros/views/widgets/custom_footer_widget.dart';
import 'package:meros/views/widgets/product_item_widget.dart';

import 'components/favorite_empty_widget.dart';
import 'components/favorite_not_empty_widget.dart';

final List<String> _items = [
  'Обложка для паспорта',
  'Аккумуляторная дрель-шуруповерт Metabo PowerMaxx BS 2014 Basic 2.0Ah x2 Case 34 Н...',
  'Молоко кокосовое Aroy-D 60% 18.5%, 400 мл / 30% 37%, 550 мл',
];

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const AppBarText(title: 'Избранное'),
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
                  if (_items.isNotEmpty) const FavoriteNotEmptyWidget(),
                ],
              ),
            ),
          ),
          if (_items.isNotEmpty)
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
                  if (_items.isEmpty) const FavoriteEmptyWidget(),
                  if (_items.isNotEmpty) const SizedBox(
                    height: 12.0,
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
