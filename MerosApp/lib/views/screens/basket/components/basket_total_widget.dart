import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/widgets/buttons/navigation_button.dart';

class BasketTotalWidget extends StatelessWidget {
  const BasketTotalWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryDarkColor.withOpacity(.03),
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Column(
              children: [
                _buildPriceWidget(
                  title: 'Стоимость:',
                  price: '250 000 UZS',
                  priceColor: Colors.black,
                ),
                _buildPriceWidget(
                  title: 'Доставка:',
                  price: '20 000 UZS',
                  priceColor: Colors.black,
                ),
                _buildPriceWidget(
                  title: 'Скидка:',
                  price: '-15 000 UZS',
                  priceColor: Colors.red,
                ),
                const Divider(
                  color: kGreyColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'К оплате:',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '255 000 UZS',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                        color: kPrimaryDarkColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
              ],
            ),
          ),
          NavigationBarButton(
            title: 'Перейти к оформлению',
            press: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildPriceWidget({
    required String title,
    required String price,
    required Color priceColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: kGreyColor,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: 18.0,
              color: priceColor,
            ),
          ),
        ],
      ),
    );
  }
}
