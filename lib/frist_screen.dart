import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screen%20login.dart';
import 'package:untitled1/register.dart';


class firstScreen extends StatefulWidget {
  @override
  State<firstScreen> createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb5d2ec),
      body: Container(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 65),
            child: Image.network(
              'https://images.vexels.com/media/users/3/128439/isolated/preview/55b670096de2eec55e31d38e92798bda-pizza-logo-with-crowns.png',
              height: 300,
              width: 500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 60,
              width: 250,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Register(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffFFEAB5),
                  elevation: 10,
                ),
                child: Text(
                  'Register',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[900]),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              width: 250,
              height: 60,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreeLogin(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  elevation: 30,
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Image.network(
            'https://images.vexels.com/media/users/3/128438/isolated/preview/fc4ef0da5cb4930c9b05dc18d88beec6-pizza-logos.png',
            height: 220,
          ),
        ],
      )),
    );
  }
}
