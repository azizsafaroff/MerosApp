import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meros/models/constants.dart';

class ProductTitleWidget extends StatelessWidget {
  const ProductTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Триллионер слушает',
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Row(
            children: [
                Row(
                  children: List.generate(
                    5,
                    (index) => SvgPicture.asset(
                      'assets/icons/ic_favorite_fill.svg',
                      width: 20.0,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              const Icon(
                Icons.arrow_drop_down_rounded,
                color: Colors.grey,
                size: 28.0,
              ),
              const SizedBox(
                width: 8.0,
              ),
              const Text(
                "Отзывы (50)",
                style: TextStyle(
                  fontSize: 14.0,
                  color: kGreyColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 18.0,
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                    ),
                    side: const BorderSide(
                      color: kGreyColor,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  child: const Text(
                    'В корзину',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: kGreyColor,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                width: 24.0,
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                    ),
                    primary: kPrimaryDarkColor,
                  ),
                  child: const Text(
                    'Купить',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
        ],
      ),
    );
  }
}
