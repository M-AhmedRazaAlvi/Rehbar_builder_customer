import 'package:flutter/material.dart';
import 'package:rehber_builders/flash_screen/flashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      title: 'Rehber Builders',
      home: SplashScreen(),
    );
  }
}
