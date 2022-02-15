import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';

class BasketCountWidget extends StatefulWidget {
  const BasketCountWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BasketCountWidget> createState() => _BasketCountWidgetState();
}

class _BasketCountWidgetState extends State<BasketCountWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildButton(
          icon: Icons.horizontal_rule_rounded,
          press: () {
            if (_count != 0) {
              setState(() {
                _count--;
              });
            }
          },
        ),
        const SizedBox(
          width: 4.0,
        ),
        SizedBox(
          width: 22.0,
          child: Text(
            _count.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
        const SizedBox(
          width: 4.0,
        ),
        _buildButton(
          icon: Icons.add_rounded,
          press: () {
            if (_count + 1 != 100) {
              setState(() {
                _count++;
              });
            }
          },
        ),
      ],
    );
  }

  ClipRRect _buildButton({required icon, required VoidCallback press}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.all(2.0),
          color: kGreyColor.withOpacity(.2),
          child: Icon(
            icon,
            size: 22.0,
          ),
        ),
        onTap: press,
      ),
    );
  }
}
