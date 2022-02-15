import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/details/filter_open/open_filter_screen.dart';
import 'package:meros/views/screens/favorite/components/favorite_filter_dialog_widget.dart';
import 'package:meros/views/widgets/ad_widget.dart';
import 'package:meros/views/widgets/app_bar_text.dart';
import 'package:meros/views/widgets/buttons/custom_button.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CategoryTitleWidget extends StatelessWidget {
  final String title;
  const CategoryTitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppBarText(title: title),
            const SizedBox(
              height: 12.0,
            ),
            AdWidget(
              image: 'assets/images/sale_image.png',
              height: 140.0,
              press: () {},
            ),
            const SizedBox(
              height: 12.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              const FavoriteFilterDialogWidget(),
                        );
                      },
                      child: Row(
                        children: const [
                          Text(
                            'Популярные',
                          ),
                          Icon(
                            Icons.arrow_drop_down_rounded,
                            color: Colors.grey,
                            size: 28.0,
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      icon: 'assets/icons/ic_filter.svg',
                      color: Colors.black,
                      press: () {
                        showMaterialModalBottomSheet(
                          duration: const Duration(milliseconds: 500),
                          context: context,
                          builder: (context) => const OpenFilterScreen(),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              color: kGreyColor,
            ),
          ],
        ),
      ),
    );
  }
}
