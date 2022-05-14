import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:untitled1/order.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color:  Color(0xffb5d2ec),
      child: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()));
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30,
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 90,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://img.freepik.com/free-vector/woman-profile-cartoon_18591-58480.jpg',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Asmaa",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Asmaa @gmail.com",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "Account Information",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey[200],
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Address Information",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 25,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[200],
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "Language",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 25,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey[200],
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Recalculate Bmr ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 25,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[200],
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Log Out  ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 25,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[200],
                thickness: 2,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
