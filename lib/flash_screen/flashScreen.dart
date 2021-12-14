import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rehber_builders/auth/loginScreen.dart';

import 'package:rehber_builders/utils/images.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
            0.0,
            100.0
          ],
              colors: [
            Color(0xff4693DA),
            Color(0xff092254),
          ])),
      child: Align(
          alignment: Alignment.center,
          child: Image.asset(Images.logo, width: 171, height: 150)),
    );
  }
}
