import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/widgets/buttons/custom_button.dart';

class ProfileUserWidget extends StatelessWidget {
  const ProfileUserWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: kPrimaryDarkColor,
          height: 140.0,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 24.0,
                left: 16.0,
                right: 16.0,
                bottom: 16.0,
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30.0,
                    backgroundColor: kGreyColor,
                    backgroundImage: AssetImage(
                      'assets/images/profile_image.png',
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Вахабов Абдулбасит",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Мои данные",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  CustomButton(
                    color: Colors.white,
                    icon: CupertinoIcons.forward,
                    press: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 86.0,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 16.0),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/recommend_image.png",
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    margin: const EdgeInsets.only(right: 8.0),
                    width: 196.0,
                  );
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
