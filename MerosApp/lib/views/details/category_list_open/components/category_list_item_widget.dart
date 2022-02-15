
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/widgets/buttons/custom_button.dart';

class OpenCategoryItemWidget extends StatelessWidget {
  final String title;
  final VoidCallback press;
  const OpenCategoryItemWidget({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 4.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                color: kGreyColor,
              ),
            ),
            CustomButton(
              icon: CupertinoIcons.forward,
              color: kGreyColor,
              size: 20.0,
              press: press,
            ),
          ],
        ),
      ),
    );
  }
}
