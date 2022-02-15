import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';

class CategoryFilterItemWidget extends StatelessWidget {
  final String title;
  final VoidCallback press;
  final int value;
  final int? groupValue;
  const CategoryFilterItemWidget({
    Key? key,
    required this.title,
    required this.press,
    required this.value,
    required this.groupValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 4.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                Radio(
                  value: value,
                  groupValue: groupValue,
                  onChanged: (value) {
                    press();
                  },
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Divider(
                height: 0.0,
                color: kGreyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
