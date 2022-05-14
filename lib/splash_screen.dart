import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled1/Screen%20login.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ScreeLogin(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff97B9D5),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://filipmancic.com/newspaper/img/img1.png'),
              SizedBox(
                height: 20,
              ),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
