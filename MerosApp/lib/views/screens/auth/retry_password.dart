import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';

import 'again_vostanavleniya_parol.dart';

class RetryPassword extends StatelessWidget {
  const RetryPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Восстановление пароля"),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Form(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Телефон',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "+998(...)",
                        labelStyle:
                            TextStyle(color: Colors.grey.withOpacity(.9)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Text(
                      "Введите номер телефона чтобы получить код активации",
                      style: TextStyle(fontSize: 14.0),
                    ),
                    const Text(
                      'Код',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Введите код активации",
                        labelStyle:
                            TextStyle(color: Colors.grey.withOpacity(.9)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Text("Отправить код еще раз"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 18.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(222.0, 45.0),
                primary: kPrimaryDarkColor,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AgainVastanavleniyaParol(),
                  ),
                );
              },
              child: const Text(
                "Получить код активации",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
