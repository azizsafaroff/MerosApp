import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';

import 'pin_code/pin_code.dart';

class RegisterNomer extends StatelessWidget {
  const RegisterNomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Регистрация"),
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
                    const Text("Введите номер телефона чтобы получить код активации"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 18.0,),
            ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(222.0, 45.0),
              primary: kPrimaryDarkColor,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PinCode()));
            },
            child: const Text(
              "Получить код",
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
