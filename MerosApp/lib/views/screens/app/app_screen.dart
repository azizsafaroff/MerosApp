import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';

import 'package:meros/views/widgets/bottom_navigation_bar/custom_bottom_nav_bar.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  void initState() {
    appState = () {
      setState(() {});
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreenIndex],
      bottomNavigationBar: CustomNavigationBar(
        setStateCallback: () {
          setState(() {});
        },
      ),
    );
  }
}
