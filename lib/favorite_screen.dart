import 'package:flutter/material.dart';
import 'package:untitled1/Settings_Screen.dart';
import 'package:untitled1/cart_screen.dart';
import 'package:untitled1/frist_screen.dart';
import 'package:untitled1/order.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  int pizzaCounter = 0;

  int pizzaPrice = 120;

  int counter = 0;
  bool isBenShown = true;
  bool isPizzaShown = true;

  bool twoIsBenShown = true;
  bool twoIsPizzaShown = true;
  int twoCounter = 0;

  bool threeIsBenShown = true;
  bool threeIsPizzaShown = true;
  int threeCounter = 0;

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
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => FavoriteScreen(),
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
            'Favorite',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                );
              },
              icon: Icon(
                Icons.arrow_back,
                size: 30,
              ),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(
            bottom: 20,
          ),
          color: Color(0xff97B9D5),
          child: Column(
            children: [
              Row(
                children: [],
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView(
                  children: [
                    isPizzaShown
                        ? Row(
                            children: [
                              Expanded(
                                child: TextButton(
                                  onPressed: () {
                                    isBenShown = !isBenShown;
                                    pizzaCounter = counter;
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 400,
                                    height: 141,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(
                                        0xffd0d9d9,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          foregroundImage: NetworkImage(
                                              "https://valentinos.com/wp-content/uploads/2020/04/Pizza-Overhead-DeluxePep-3744.png"),
                                          radius: 50,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15, top: 15),
                                              child: Text(
                                                "Pizza",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Text(
                                                "Pepperoni",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: Colors.red),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Text(
                                                "Pizza",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.red),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [],
                                          ),
                                        ),
                                        Column(
                                          children: [],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              IconButton(
                                alignment: Alignment.centerLeft,
                                iconSize: 40,
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                onPressed: () {
                                  setState(() {});
                                },
                              ),
                            ],
                          )
                        : SizedBox.shrink(),
                    SizedBox(
                      height: 10,
                    ),
                    twoIsPizzaShown
                        ? Row(
                            children: [
                              Expanded(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Container(
                                    width: 400,
                                    height: 141,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(
                                        0xffd0d9d9,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          foregroundImage: NetworkImage(
                                              "https://previews.123rf.com/images/imagesetc123/imagesetc1231310/imagesetc123131000016/22968131-overhead-shot-of-tasty-pizza-with-plenty-of-fresh-toppings.jpg"),
                                          radius: 50,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15, top: 15),
                                              child: Text(
                                                "Pizza",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Text(
                                                "Meet",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Colors.red),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Text(
                                                "Pizza",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.red),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [],
                                          ),
                                        ),
                                        Column(
                                          children: [],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              IconButton(
                                alignment: Alignment.centerLeft,
                                iconSize: 40,
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                onPressed: () {
                                  setState(() {});
                                },
                              ),
                            ],
                          )
                        : SizedBox.shrink(),
                    SizedBox(
                      height: 10,
                    ),
                    threeIsPizzaShown
                        ? Row(
                            children: [
                              Expanded(
                                child: TextButton(
                                  onPressed: () {},
                                  child: Container(
                                    width: 400,
                                    height: 141,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(
                                        0xffd0d9d9,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          foregroundImage: NetworkImage(
                                              "https://wearenotmartha.com/wp-content/uploads/Shrimp-Scampi-Pizza-Featured.jpg"),
                                          radius: 50,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15, top: 15),
                                              child: Text(
                                                "Pizza",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Text(
                                                "Shrimp",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Colors.red),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Text(
                                                "Pizza",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.red),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [],
                                          ),
                                        ),
                                        Column(
                                          children: [],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              IconButton(
                                alignment: Alignment.centerLeft,
                                iconSize: 40,
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                onPressed: () {
                                  setState(() {});
                                },
                              ),
                            ],
                          )
                        : SizedBox.shrink(),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
