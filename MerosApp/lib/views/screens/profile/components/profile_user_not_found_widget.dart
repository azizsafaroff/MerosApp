import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/screens/auth/autorization.dart';

class ProfileUserNotHaveWidget extends StatelessWidget {
  const ProfileUserNotHaveWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
        color: Colors.grey.withOpacity(.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Bойдите или\nзарегистрируйтесь",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            const Text(
              "Чтобы делать покупки, отслеживать заказыи",
              style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400),
            ),
            const Text(
              "пользоваться персональными скидками и баллами.",
              style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kPrimaryDarkColor,
                fixedSize: const Size(306.0, 38.0),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Autorization(),
                  ),
                );
              },
              child: const Text(
                "Войти или зарегистрироваться",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
