import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:meros/models/constants.dart';

class OpenFilterItemWidget extends StatefulWidget {
  const OpenFilterItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<OpenFilterItemWidget> createState() => _OpenFilterItemWidgetState();
}

class _OpenFilterItemWidgetState extends State<OpenFilterItemWidget> {
  bool _isActive = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Бестселлеры',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          FlutterSwitch(
            height: 20.0,
            width: 36.0,
            toggleSize: 18.0,
            padding: 0.5,
            activeColor: kPrimaryColor,
            inactiveColor: kGreyColor.withOpacity(0.2),
            value: _isActive,
            onToggle: (val) {
              setState(() {
                _isActive = val;
              });
            },
          ),
        ],
      ),
    );
  }
}
