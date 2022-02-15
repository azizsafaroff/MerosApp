import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';

final List<String> _items = [
  'Сначала новые',
  'Сначала старые',
  'Сначала дешевые',
  'Сначала дорогие',
  'Алфавиту',
];

class FavoriteFilterDialogWidget extends StatelessWidget {
  const FavoriteFilterDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              _items.length,
              (index) => _buildButtonItemWidget(_items[index], index),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonItemWidget(String title, int index) {
    Color backgroundColor = Colors.transparent;
    Color textColor = Colors.black;

    if (index == 0) {
      backgroundColor = kPrimaryDarkColor;
      textColor = Colors.white;
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 16.0,
      ),
      color: backgroundColor,
      child: Text(
        title,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}
