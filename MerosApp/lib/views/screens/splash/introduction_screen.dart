import 'package:flutter/material.dart';
import 'package:meros/views/screens/home/home_screen.dart';

class Introduction extends StatelessWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      },
    );
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: 184.0,
            width: 149.6,
            child: Image.asset(
              "assets/images/meros_logo.png",
            ),
          ),
        ),
      ),
    );
  }
}
