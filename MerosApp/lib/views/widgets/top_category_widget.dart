import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meros/views/widgets/buttons/custom_button.dart';

class TopCategoryWidget extends StatelessWidget {
  final String title;
  final VoidCallback? press;
  const TopCategoryWidget({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          press != null ? CustomButton(
            icon: CupertinoIcons.forward,
            press: press!,
          ) : const SizedBox(),
        ],
      ),
    );
  }
}
