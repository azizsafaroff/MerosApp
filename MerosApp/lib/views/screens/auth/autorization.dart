import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/widgets/app_bar_text.dart';
import 'package:meros/views/widgets/buttons/custom_button.dart';

import 'change_parol.dart';
import 'register_nomer.dart';

class Autorization extends StatelessWidget {
  const Autorization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            CustomButton(
              icon: 'assets/icons/ic_back.svg',
              press: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              width: 16.0,
            ),
            const AppBarText(title: 'Авторизация'),
          ],
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Form(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                top: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Телефон",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "+998(...)",
                      hintStyle: TextStyle(color: Colors.grey.withOpacity(.9)),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 4.0,
                        horizontal: 16.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  const Text(
                    "Пароль",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 4.0,
                        horizontal: 16.0,
                      ),
                      hintText: "Пароль",
                      hintStyle: TextStyle(color: Colors.grey.withOpacity(.9)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: true,
                        onChanged: (value) {},
                      ),
                      const Text("Запомнить пароль"),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(222.0, 45.0),
              primary: kPrimaryDarkColor,
            ),
            onPressed: () {},
            child: const Text(
              "Войти",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          OutlinedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(222.0, 45.0),
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
                side: const BorderSide(color: Colors.grey),
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const RegisterNomer(),
                ),
              );
            },
            child: const Text(
              "Зарегистрироваться",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ChangeParol(),
                ),
              );
            },
            child: const Text(
              "Забыли пароль?",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
