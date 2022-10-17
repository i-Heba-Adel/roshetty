import 'package:flutter/material.dart';
import 'package:roshetty/ui/edit_profile.dart';
import 'package:roshetty/ui/drawer_component/drawer_screen.dart';
import 'package:roshetty/ui/main_screen.dart';
import 'package:roshetty/ui/login_screen.dart';
import 'package:roshetty/ui/registration_screen.dart';
import 'package:roshetty/ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}