import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meros/models/constants.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      style: const TextStyle(
        fontSize: 18.0,
      ),
      decoration: InputDecoration(
        fillColor: kGreyColor.withOpacity(.1),
        filled: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            'assets/icons/ic_search.svg',
            color: kGreyColor,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        hintText: "Поиск по товаром...",
        hintStyle: const TextStyle(
          color: kGreyColor,
          fontSize: 18.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
