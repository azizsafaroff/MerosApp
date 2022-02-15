import 'package:flutter/material.dart';
import 'package:meros/models/theme.dart';
import 'package:meros/views/screens/app/app_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meros Shop',
      theme: theme,
      home: const AppScreen(),
    );
  }
}
