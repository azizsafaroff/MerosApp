import 'package:flutter/material.dart';
import 'package:meros/views/details/filter_open/open_filter_screen.dart';
import 'package:meros/views/screens/favorite/components/favorite_filter_dialog_widget.dart';
import 'package:meros/views/widgets/buttons/custom_button.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class FavoriteNotEmptyWidget extends StatelessWidget {
  const FavoriteNotEmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const FavoriteFilterDialogWidget(),
              );
            },
            child: Row(
              children: const [
                Text(
                  'Сначала новые',
                ),
                Icon(
                  Icons.arrow_drop_down_rounded,
                  color: Colors.grey,
                  size: 28.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
