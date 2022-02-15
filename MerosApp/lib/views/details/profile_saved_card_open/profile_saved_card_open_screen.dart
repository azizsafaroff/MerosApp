import 'package:flutter/material.dart';
import 'package:meros/views/widgets/app_bar_text.dart';
import 'package:meros/views/widgets/buttons/custom_button.dart';

class ProfileAddCardScreen extends StatelessWidget {
  const ProfileAddCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
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
            const AppBarText(title: 'Добавить карту'),
          ],
        ),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
