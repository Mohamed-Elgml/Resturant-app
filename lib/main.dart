import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Foodd/Screen%20login.dart';
import 'package:untitled1/Foodd/Settings_Screen.dart';
import 'package:untitled1/Foodd/cart_screen.dart';
import 'package:untitled1/Foodd/drawer.dart';
import 'package:untitled1/Foodd/favorite_screen.dart';
import 'package:untitled1/Foodd/frist_screen.dart';
import 'package:untitled1/Foodd/order.dart';
import 'package:untitled1/Foodd/splash_screen.dart';


main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
