import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';

import 'basket_count_widget.dart';
import 'basket_custom_button.dart';
import 'basket_delete_dialog_widget.dart';

class BasketItemWidget extends StatefulWidget {
  final String title;
  const BasketItemWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<BasketItemWidget> createState() => _BasketItemWidgetState();
}

class _BasketItemWidgetState extends State<BasketItemWidget> {
  bool _isActive = false;
  bool _isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 4.0,
        right: 16.0,
        top: 16.0,
        bottom: 16.0,
      ),
      margin: const EdgeInsets.only(bottom: 12.0),
      color: kGreyColor.withOpacity(.1),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isActive = !_isActive;
              });
            },
            child: Row(
              children: [
                Checkbox(
                  value: _isActive,
                  activeColor: kPrimaryDarkColor,
                  splashRadius: 0.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onChanged: (active) {
                    setState(() {
                      _isActive = active!;
                    });
                  },
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/product_image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '45 000 UZS',
                        style: TextStyle(
                          color: kPrimaryDarkColor,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        widget.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              children: [
                const Divider(
                  height: 32.0,
                  color: kGreyColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BasketCustomButton(
                      active: _isSaved,
                      icon: _isSaved ? 'assets/icons/ic_favorite_fill.svg' : 'assets/icons/ic_favorite.svg',
                      title: 'Добавить в\nизбранное',
                      press: () {
                        setState(() {
                          _isSaved = !_isSaved;
                        });
                      },
                    ),
                    BasketCustomButton(
                      active: false,
                      icon: 'assets/icons/ic_trash.svg',
                      title: 'Удалить',
                      press: () {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              const BasketDeleteDialogWidget(),
                        );
                      },
                    ),
                    const BasketCountWidget()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
