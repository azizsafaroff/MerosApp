import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';

import 'buttons/custom_button.dart';

class ProductItemWidget extends StatefulWidget {
  final VoidCallback press;
  const ProductItemWidget({
    Key? key,
    required this.press,
  }) : super(key: key);

  @override
  State<ProductItemWidget> createState() => _ProductItemWidgetState();
}

class _ProductItemWidgetState extends State<ProductItemWidget> {
  bool _isSaved = false;
  bool _isAdded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/product_image.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: CustomButton(
                      icon: _isSaved
                          ? 'assets/icons/ic_favorite_fill.svg'
                          : 'assets/icons/ic_favorite.svg',
                      color: _isSaved ? kPrimaryColor : Colors.black,
                      press: () {
                        setState(() {
                          _isSaved = !_isSaved;
                        });
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4.0,
                        horizontal: 8.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: kPrimaryColor,
                      ),
                      child: const Text(
                        '-54%',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            '220 000 сум',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
              color: kPrimaryDarkColor,
            ),
          ),
          const Text(
            '1 220 000 сум',
            style: TextStyle(
              fontSize: 14.0,
              decoration: TextDecoration.lineThrough,
              color: kGreyColor,
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          const Text(
            'Рассказы о пророках',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          _isAdded
              ? OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 16.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      _isAdded = false;
                    });
                  },
                  child: const Text(
                    "В корзину",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                )
              : ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryDarkColor,
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 16.0,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      _isAdded = true;
                    });
                  },
                  child: const Text(
                    "В корзину",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
