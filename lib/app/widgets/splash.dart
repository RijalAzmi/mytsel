import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytsel/app/routes/app_pages.dart';
import 'package:mytsel/app/widgets/splash.dart';
import 'package:mytsel/main.dart';

void main() {
  runApp(MyApp());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFEC2028),
        body: Center(
          // Untuk menampilkan logo pada splashscreen
          child: Container(
            width: Get.width * 0.5,
            height: Get.width * 0.5,
            child: Image.asset("assets/logo/logo-splash.png"),
          ),
        ),
      ),
    );
  }
}
