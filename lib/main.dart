import 'package:flutter/material.dart';
import 'package:food_app/Cartpage.dart';
import 'package:food_app/Home.dart';
import 'package:food_app/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFF5F5F3)),
      home: Splashscreen(),
    );
  }
}
