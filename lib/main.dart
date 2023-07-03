import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'app/widgets/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return GetMaterialApp(
    //   debugShowCheckedModeBanner: false, //Untuk menghilangkan tulisan debug
    //   title: "Application",
    //   initialRoute: Routes.HOME,
    //   getPages: AppPages.routes,
    // );
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, snapshot) {
        // Kondisi ketika menunggu 3 detik
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        } else {
          // Apabila tidak menunggu/sudah selesai 3 detik
          return GetMaterialApp(
            debugShowCheckedModeBanner:
                false, //Untuk menghilangkan tulisan debug
            title: "Application",
            initialRoute: Routes.LOGIN,
            getPages: AppPages.routes,
          );
        }
      },
    );
  }
}
