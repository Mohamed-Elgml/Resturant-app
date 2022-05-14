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


class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  double total = 360;

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
            'Payment place',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MyHomePage()
                ));
              },
              icon: Icon(
                Icons.arrow_back,
                size: 30,
              ),),

          ],
        ),
        body: Container(
          color: Color(0xff97B9D5),
          child: Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      ' My order',
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.delete,
                        size: 40,
                      ),
                      onPressed: () {
                        setState(() {
                          total = 0;
                        });
                      }),
                ],
              ),
              Expanded(child: SizedBox()),
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffFFEAB5),),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'order confirmation',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Container(
                        height: 200,
                        width: 300,
                        color: Colors.white70,
                        child: Image.network(
                            'https://neapay.com/res_blog/credit-card-brands.png'),
                      ),
                    ),
                    Text(
                      'Delivery Address',
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Cairo  / Egypt ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Ahmed Hassan st'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Estimated Delivery time',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey),
                          padding: EdgeInsets.all(8),
                          child: Text('30-40 min'),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Total Price',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              '$total \$',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.indigoAccent,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            children: [
                              Icon(Icons.payment),
                              Text(
                                'place order',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
