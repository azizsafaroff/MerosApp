import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/screens/profile/components/profile_not_registred_widget.dart';
import 'package:meros/views/screens/profile/profile_screen.dart';

class AgainVastanavleniyaParol extends StatelessWidget {
  const AgainVastanavleniyaParol({Key? key}) : super(key: key);

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
                      'Изменение пароля',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                    height: 8.0,
                  ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Новый пароль",
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
                    const Text("Пароль должен состоять из цифр, заглавных букв и спец символа",
                      style: TextStyle(
                          fontSize: 14.0),),

                    const Text(
                      'Повторите пароль',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                    height: 8.0,
                  ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Новый пароль",
                        labelStyle:
                            TextStyle(color: Colors.grey.withOpacity(.9)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
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
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const ProfileScreen()));
            },
            child: const Text(
              "Сменить пароль",
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
