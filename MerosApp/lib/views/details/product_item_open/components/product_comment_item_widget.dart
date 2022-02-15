import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meros/models/constants.dart';

class ProductCommentItemWidget extends StatelessWidget {
  const ProductCommentItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Container(
                width: 50.0,
                height: 50.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/brend_image.png',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Фаррух",
                      style: TextStyle(fontSize: 18.0),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      children: List.generate(
                        5,
                        (index) => SvgPicture.asset(
                          'assets/icons/ic_favorite_fill.svg',
                          width: 16.0,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                "3 месяца назад",
                style: TextStyle(color: kGreyColor),
              ),
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            'Книга легко читается, полезна для всех областей жизни человека.Становится настольной,особенно в минуты, когда «руки опускаются» перечитываешь некоторые моменты и вновь находишь в себе силы и желание работать,жить, любить,общаться с ребёнком,поддерживать родителей. '
            'Книга легко читается, полезна для всех областей жизни человека.Становится настольной,особенно в минуты, когда «руки опускаются» перечитываешь некоторые моменты и вновь находишь в себе силы и желание работать,жить, любить,общаться с ребёнком,поддерживать родителей. ',
            style: TextStyle(
              fontSize: 14.0,
              color: kGreyColor,
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Ещё 4 комментария",
                style: TextStyle(
                  fontSize: 18.0,
                  color: kPrimaryDarkColor,
                ),
              ),
              Text(
                "Комментировать",
                style: TextStyle(
                  fontSize: 18.0,
                  color: kPrimaryDarkColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
        ],
      ),
    );
  }
}
