import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screen%20login.dart';
import 'package:untitled1/Settings_Screen.dart';
import 'package:untitled1/cart_screen.dart';
import 'package:untitled1/favorite_screen.dart';
import 'package:untitled1/frist_screen.dart';
import 'package:untitled1/order.dart';
import 'package:untitled1/payment.dart';

import 'payment.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _auth = FirebaseAuth.instance;
  User signedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        signedInUser = user;
        print(signedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  double price = 60;
  double hut = 1, dominos = 1.2, papa = 0.8;
  int counter = 0, restaurant = 0;
  bool s = false, m = true, l = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: Drawer(
            child: Container(
              color: Color(0xffFFEAB5),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              "https://img.freepik.com/free-vector/woman-profile-cartoon_18591-58480.jpg"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Hi",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          ' Eng: Asmaa',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff6E9091),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyHomePage(),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.home_outlined,
                                    size: 35,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Home",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CartScreen(),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Colors.black,
                                    size: 35,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "My Cart",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.history,
                                    size: 35,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Order History",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  IconButton(

                                    icon: Icon(Icons.favorite),
                                    color: Colors.black,
                                    onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>FavoriteScreen (),
                                        ),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Favorite",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.question_answer,
                                    size: 35,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "FQAS",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.support_agent,
                                    size: 35,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Support",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SettingsScreen(),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.settings_outlined,
                                    size: 35,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Settings",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => firstScreen(),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.logout,
                                    size: 35,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Log Out",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Color(0xff81a6c6),
            centerTitle: true,
            title: Text(
              'HOME',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 30,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FavoriteScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          body: Container(
            color: Color(0xff97B9D5),
            child: ListView(
              padding: EdgeInsets.all(20),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [],
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(120),
                    color: Color(0xffFFEAB5),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(Icons.arrow_back_ios_sharp),
                              onPressed: () {},
                            ),
                            Container(
                              height: 100,
                              width: 180,
                              child: Image.network(
                                'https://www.picng.com/upload/pizza/png_pizza_15271.png',
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  s = true;
                                  m = false;
                                  l = false;
                                  price = 40;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 15),
                                color: (s) ? Colors.green : Colors.white,
                                child: Text(
                                  'S',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  s = false;
                                  m = true;
                                  l = false;
                                  price = 60;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 8),
                                color: (m) ? Colors.green : Colors.white,
                                child: Text(
                                  'M',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  s = false;
                                  m = false;
                                  l = true;
                                  price = 80;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 8),
                                color: (l) ? Colors.green : Colors.white,
                                child: Text(
                                  'L',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 120,
                        child: Text(
                          'pepperoni pizza',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )),
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star_rate,
                              color: Colors.amber,
                              size: 35,
                            ),
                          ),
                          Text(
                            '4.5',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.monetization_on_outlined),
                          Text('${price * counter}')
                        ],
                      ),
                    ),
                    Container(
                      color: Color(0xffFFEAB5),
                      padding: EdgeInsets.all(3),
                      child: Row(
                        children: [
                          IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  counter++;
                                });
                              }),
                          Text('$counter'),
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              setState(
                                () {
                                  counter--;
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Restaurant Brand',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    color: Color(0xff6E9091),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              (restaurant == 0)
                                  ? Container(
                                      height: 50,
                                      width: 100,
                                      child: Image.network(
                                        'https://yt3.ggpht.com/ytc/AKedOLSTP4cPU2cs1Zg-hxYggqMMUEJfT82A6atYmuKNzw=s900-c-k-c0x00ffffff-no-rj',
                                      ),
                                    )
                                  : Container(
                                      height: 50,
                                      width: 100,
                                      child: (restaurant == 1)
                                          ? Image.network(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf3s3guGTHkykT46SBA5S-FUOM4mNh6jd0YQ&usqp=CAU')
                                          : Image.network(
                                              'https://cache.dominos.com/olo/6_84_5/assets/build/images/promo/dominos_social_logo.jpg')),
                              (restaurant == 0)
                                  ? Container(
                                      color: Colors.blue,
                                      height: 100,
                                      width: 100,
                                      child: Image.network(
                                          'https://cache.dominos.com/olo/6_84_5/assets/build/images/promo/dominos_social_logo.jpg'))
                                  : Container(
                                      color: Colors.blue,
                                      height: 100,
                                      width: 100,
                                      child: (restaurant == 1)
                                          ? Image.network(
                                              'https://yt3.ggpht.com/ytc/AKedOLSTP4cPU2cs1Zg-hxYggqMMUEJfT82A6atYmuKNzw=s900-c-k-c0x00ffffff-no-rj')
                                          : Image.network(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf3s3guGTHkykT46SBA5S-FUOM4mNh6jd0YQ&usqp=CAU')),
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            onPressed: () {
                              if (s == true) {
                                price = 40;
                              } else if (m == true) {
                                price = 60;
                              } else {
                                price = 80;
                              }

                              if (restaurant != 2) {
                                setState(() {
                                  restaurant++;
                                });
                              } else {
                                setState(() {
                                  restaurant = 0;
                                });
                              }
                              if (restaurant == 0) {
                                setState(() {
                                  price = price * dominos;
                                });
                              } else if (restaurant == 1) {
                                setState(() {
                                  price = price * hut;
                                });
                              } else {
                                setState(() {
                                  price = price * papa;
                                });
                              }
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'order now',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 25,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
