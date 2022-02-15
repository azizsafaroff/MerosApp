import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/screens/basket/components/basket_delete_dialog_widget.dart';

class BasketNotEmptyWidget extends StatefulWidget {
  const BasketNotEmptyWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BasketNotEmptyWidget> createState() => _BasketNotEmptyWidgetState();
}

class _BasketNotEmptyWidgetState extends State<BasketNotEmptyWidget> {
  bool _allClear = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0, left: 4.0),
          child: Row(
            children: [
              Checkbox(
                value: _allClear,
                activeColor: kPrimaryDarkColor,
                splashRadius: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (active) {
                  setState(() {
                    _allClear = active!;
                  });
                },
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _allClear = !_allClear;
                  });
                },
                child: const Text(
                  'Выбрать все',
                  style: TextStyle(
                    color: kPrimaryDarkColor,
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => const BasketDeleteDialogWidget(),
                  );
                },
                child: const Text(
                  'Удалить выбранные',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
      ],
    );
  }
}
