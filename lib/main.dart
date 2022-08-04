import 'dart:async';
import 'package:fi/screens/customize.dart';
import 'package:fi/screens/dashboard.dart';
import 'package:fi/screens/pageview/page.dart';
import 'package:fi/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ClothingApp());
}

class ClothingApp extends StatelessWidget {
  const ClothingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoard(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const MyPageView(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
