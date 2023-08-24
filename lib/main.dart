import 'package:find_person/modal/const/const_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto",
      ),
      title: "Find Details From License Number",
      home: SplashScreen(),
    );
  }
}
