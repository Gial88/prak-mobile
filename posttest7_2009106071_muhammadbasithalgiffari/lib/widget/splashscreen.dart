import 'dart:async';
import 'package:flutter/material.dart';
import '../page/landingpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenStart();
  }

  splashScreenStart() {
    var duration = const Duration(seconds: 3);
    return Timer(
      duration,
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => LandingPage(),
          ),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/food-service.png",
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
