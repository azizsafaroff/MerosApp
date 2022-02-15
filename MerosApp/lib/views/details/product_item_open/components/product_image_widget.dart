import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/widgets/buttons/custom_button.dart';

class ProductImageWidget extends StatefulWidget {
  const ProductImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductImageWidget> createState() => _ProductImageWidgetState();
}

class _ProductImageWidgetState extends State<ProductImageWidget> {
  int _imageIndex = 0;
  bool _isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 170.0,
            child: Stack(
              children: [
                PageView.builder(
                  itemBuilder: (context, index) => Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/product_image.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  onPageChanged: (int index) {
                    setState(() {
                      _imageIndex = index;
                    });
                  },
                  itemCount: 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                        icon: 'assets/icons/ic_back.svg',
                        press: () {
                          Navigator.pop(context);
                        },
                      ),
                      CustomButton(
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              2,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 2.0,
                ),
                child: Container(
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color:
                        _imageIndex == index ? kPrimaryDarkColor : kGreyColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  '220 000 сум',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    color: kPrimaryDarkColor,
                  ),
                ),
                Text(
                  '1 220 000 сум',
                  style: TextStyle(
                    fontSize: 14.0,
                    decoration: TextDecoration.lineThrough,
                    color: kGreyColor,
                  ),
                ),
                Divider(
                  color: kGreyColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
