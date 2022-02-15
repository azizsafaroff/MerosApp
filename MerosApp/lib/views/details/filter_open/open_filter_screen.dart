import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/widgets/app_bar_text.dart';
import 'package:meros/views/widgets/buttons/navigation_button.dart';

import 'filter_components/open_filter_item_widget.dart';
import 'filter_components/open_filter_price_widget.dart';

class OpenFilterScreen extends StatelessWidget {
  const OpenFilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Отмена',
                          style: TextStyle(
                            color: Colors.transparent,
                          ),
                        ),
                        const AppBarText(title: 'Фильтры'),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Отмена',
                            style: TextStyle(
                              color: kPrimaryDarkColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Wrap(
                      children: [
                        ...List.generate(
                          10,
                          (index) => Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4.0,
                              horizontal: 16.0,
                            ),
                            margin: const EdgeInsets.only(
                              right: 6.0,
                              bottom: 6.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: kPrimaryColor,
                            ),
                            child: const Text(
                              'Новинки',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal: 16.0,
                          ),
                          margin: const EdgeInsets.only(
                            right: 6.0,
                            bottom: 6.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: kGreyColor.withOpacity(.1),
                          ),
                          child: const Text(
                            'Очистить всё',
                            style: TextStyle(
                              color: kGreyColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: kGreyColor,
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return const OpenFilterItemWidget();
                  },
                  childCount: 6,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  const OpenFilterPriceWidget(),
                ]),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBarButton(
        title: 'Посмотреть',
        press: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
