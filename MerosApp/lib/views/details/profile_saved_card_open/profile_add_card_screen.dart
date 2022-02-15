import 'package:flutter/material.dart';
import 'package:meros/views/widgets/app_bar_text.dart';
import 'package:meros/views/widgets/buttons/custom_button.dart';

import 'components/profile_saved_card_empty_widget.dart';
import 'components/profile_saved_card_widget.dart';

List<String> _items = [
  "Visa **4321",
];

class ProfileSavedCardOpenScreen extends StatelessWidget {
  const ProfileSavedCardOpenScreen({Key? key}) : super(key: key);

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
            const AppBarText(title: 'Сохраненные карты'),
          ],
        ),
      ),
      body: _items.isEmpty
          ? const ProfileSavedCardEmptyWidget()
          : const ProfileSavedCardWidget(),
    );
  }
}
