import 'package:flutter/material.dart';

import 'dart:async';

import 'package:finalprojectpmoif20aaldyrizkyk/screens/signin_screen.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return SignInScreen();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcd0000),
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          width: 1000.0,
          height: 700.0,
        ),
      ),
    );
  }
}
