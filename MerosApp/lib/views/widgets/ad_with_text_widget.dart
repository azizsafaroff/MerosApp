import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';

class AdMobileWidget extends StatelessWidget {
  const AdMobileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 150.0,
          padding: const EdgeInsets.only(
            left: 16.0,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: kGreyColor.withOpacity(.2),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Установите мобильное приложение',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    Text('Установить'),
                  ],
                ),
              ),
              Container(
                width: 140.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/ad_for_mobile_image.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
