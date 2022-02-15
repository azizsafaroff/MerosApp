
import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';

class OpenFilterPriceWidget extends StatefulWidget {
  const OpenFilterPriceWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<OpenFilterPriceWidget> createState() => _OpenFilterPriceWidgetState();
}

class _OpenFilterPriceWidgetState extends State<OpenFilterPriceWidget> {
  double _priceMin = 1000;
  double _priceMax = 1000000000;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 8.0,
        ),
        const Text(
          'Цена',
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        RangeSlider(
          values: RangeValues(_priceMin, _priceMax),
          min: 1000,
          max: 1000000000,
          onChanged: (value) {
            setState(() {
              _priceMin = value.start;
              _priceMax = value.end;
            });
          },
        ),
        const SizedBox(
          height: 8.0,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: kGreyColor.withOpacity(.3),
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Row(
                  children: [
                    const Text(
                      'от',
                      style: TextStyle(
                        color: kGreyColor,
                      ),
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      _priceMin.toInt().toString(),
                      style: const TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: kGreyColor.withOpacity(.3),
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Row(
                  children: [
                    const Text(
                      'до',
                      style: TextStyle(
                        color: kGreyColor,
                      ),
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      _priceMax.toInt().toString(),
                      style: const TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
