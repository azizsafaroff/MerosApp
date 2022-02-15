import 'package:flutter/material.dart';

import 'components/profile_registered_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileRegistredScreen(),
    );
  }
}

