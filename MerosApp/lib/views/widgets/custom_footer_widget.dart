import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meros/models/constants.dart';

class CustomFooterWidget extends StatelessWidget {
  const CustomFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kGreyColor.withOpacity(.1),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                'Доставка',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 17.0,
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                'Оплата',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 17.0,
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                'Помощь',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 17.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            'Meros Shop © 2020. Все права защищены.',
            style: TextStyle(
              color: kGreyColor,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/ic_instagram.svg',
                width: 50.0,
              ),
              SvgPicture.asset(
                'assets/icons/ic_twitter.svg',
                width: 50.0,
              ),
              SvgPicture.asset(
                'assets/icons/ic_facebook.svg',
                width: 50.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
