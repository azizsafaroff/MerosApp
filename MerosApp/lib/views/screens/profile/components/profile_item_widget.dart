import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/widgets/buttons/custom_button.dart';

class ProfileItemWidget extends StatelessWidget {
  final Map<String, dynamic> item;
  const ProfileItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Divider(
            height: 8.0,
            color: Colors.grey.withOpacity(.5),
            thickness: 1.0,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            item["title"].toString(),
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          ...List.generate(
            item["items"]!.length,
            (index) => GestureDetector(
              onTap: (){
                item["items"]![index]["press"](context);
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item["items"]![index]["title"].toString(),
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    CustomButton(
                      icon: CupertinoIcons.forward,
                      size: 20.0,
                      color: kGreyColor,
                      press: () {
                        item["items"]![index]["press"](context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
