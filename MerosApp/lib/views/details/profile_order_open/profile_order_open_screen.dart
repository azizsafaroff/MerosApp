import 'package:flutter/material.dart';
import 'package:meros/views/details/product_item_open/product_item_screen.dart';
import 'package:meros/views/widgets/app_bar_text.dart';
import 'package:meros/views/widgets/buttons/custom_button.dart';
import 'package:meros/views/widgets/custom_footer_widget.dart';
import 'package:meros/views/widgets/product_item_widget.dart';

import 'components/profile_order_empty_widget.dart';
import 'components/profile_order_item_widget.dart';

final List<String> _items = [
  'Обложка для паспорта',
  'Аккумуляторная дрель-шуруповерт Metabo PowerMaxx BS 2014 Basic 2.0Ah x2 Case 34 Н...',
  'Молоко кокосовое Aroy-D 60% 18.5%, 400 мл / 30% 37%, 550 мл',
];

class ProfileOrderOpenScreen extends StatelessWidget {
  const ProfileOrderOpenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
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
            const AppBarText(title: 'Заказы'),
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
                  if (_items.isEmpty) const ProfileOrderEmptyWidget(),
                ],
              ),
            ),
          ),
          if (_items.isNotEmpty)
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => const ProfileOrderItemWidget(),
                childCount: 4,
              ),
            ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
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
