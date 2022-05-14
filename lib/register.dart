import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:untitled1/order.dart';


class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _fromKey = GlobalKey<FormState>();
  String email, password;
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _fromKey,
          child: ListView(
            children: [
              Container(
                width: 300,
                height: 200,
                color: Colors.teal,
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Text(
                          'CIS RESTAURANT',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        'Register',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.amber,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.network(
                      'https://www.kindpng.com/picc/m/123-1231361_pizza-clipart-circle-images-whole-pizza-clipart-hd.pnghttps://www.kindpng.com/picc/m/123-1231361_pizza-clipart-circle-images-whole-pizza-clipart-hd.png',
                      height: 60,
                    ),
                  ),
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/2/2c/Eucalyp-Deus_Pizza.png',
                    height: 60,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSWIfJ9FMwUNwqkAMg7nxjelCgKMy8cCMtzWA8neqrzxPXePBLO6AIdm7edrWR_m9aL4A&usqp=CAU',
                    height: 60,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4-DolumpgCXRanSFLksfvA-1lLWlqc5azk3b574a5mbzz0iR6I60adMZfk90mLtG9f0M&usqp=CAU',
                    height: 60,
                  ),
                  Image.network(
                    'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/5ed48562307283.5a8c3ca621c46.png',
                    height: 60,
                  ),
                  Image.network(
                    'https://i.pinimg.com/originals/3a/d3/2b/3ad32b2aa24f4d33e28c1a73b055a079.png',
                    height: 60,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  onChanged: (val) {
                    email = val;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'filed is required';
                    } else if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(email)) {
                      return 'email not valid';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter user email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  onChanged: (val) {
                    password = val;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'field is required';
                    } else if (value.length < 8) {
                      return 'password must be > 8 digits';
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter user password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(

                padding: const EdgeInsets.all(15),
                child: TextButton(
                  onPressed: () async {
                    try {
                      await _auth.createUserWithEmailAndPassword(
                          email: email, password: password);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHomePage(),
                        ),
                      );
                      print(_auth);
                    } catch (e) {
                      print(e);
                    }
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff81a6c6),
                    elevation: 10,
                  ),
                  child: Text(
                    'REGISTER',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    '                   Already have email',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.red[900]),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  margin: EdgeInsets.only(top: 5, left: 5, right: 5),
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue[900],
                  ),
                  child: Center(
                    child: Text(
                      'Login with FaceBook',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  margin: EdgeInsets.only(top: 5, left: 5, right: 5),
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red[900],
                  ),
                  child: Center(
                    child: Text(
                      'Login with Google',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
