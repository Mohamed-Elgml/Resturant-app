import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screen%20login.dart';
import 'package:untitled1/Settings_Screen.dart';
import 'package:untitled1/favorite_screen.dart';
import 'package:untitled1/frist_screen.dart';
import 'package:untitled1/order.dart';
import 'package:untitled1/payment.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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

  bool fourIsBenShown = true;
  bool fourIsPizzaShown = true;
  int fourCounter = 0;


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
            'CART',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
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
                                                  fontSize: 20,
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
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Text(
                                                "$pizzaPrice",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Colors.black),
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
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: IconButton(
                                                  iconSize: 15,
                                                  color: Colors.black,
                                                  onPressed: () {
                                                    setState(() {
                                                      counter--;
                                                    });
                                                  },
                                                  icon: Icon(Icons.remove),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "$counter",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(1),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: IconButton(
                                                  color: Colors.white,
                                                  onPressed: () {
                                                    setState(() {
                                                      counter++;
                                                    });
                                                  },
                                                  icon: Icon(Icons.add),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              isBenShown
                                  ? Container(
                                      width: 75,
                                      height: 141,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(
                                          0xffd30221,
                                        ),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: IconButton(
                                        alignment: Alignment.centerLeft,
                                        iconSize: 40,
                                        icon: Icon(
                                            Icons.restore_from_trash_outlined),
                                        onPressed: () {
                                          isPizzaShown = !isPizzaShown;
                                          setState(() {});
                                        },
                                      ),
                                    )
                                  : SizedBox.shrink(),
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
                                  onPressed: () {
                                    twoIsBenShown = !twoIsBenShown;
                                    pizzaCounter = twoCounter;
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
                                                  fontSize: 20,
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
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Text(
                                                "120",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Colors.black),
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
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: IconButton(
                                                  iconSize: 15,
                                                  color: Colors.black,
                                                  onPressed: () {
                                                    setState(() {
                                                      twoCounter--;
                                                    });
                                                  },
                                                  icon: Icon(Icons.remove),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "$twoCounter",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(1),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: IconButton(
                                                  color: Colors.white,
                                                  onPressed: () {
                                                    setState(() {
                                                      twoCounter++;
                                                    });
                                                  },
                                                  icon: Icon(Icons.add),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              twoIsBenShown
                                  ? Container(
                                      width: 75,
                                      height: 141,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(
                                          0xffd30221,
                                        ),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: IconButton(
                                        alignment: Alignment.centerLeft,
                                        iconSize: 40,
                                        icon: Icon(
                                            Icons.restore_from_trash_outlined),
                                        onPressed: () {
                                          twoIsPizzaShown = !twoIsPizzaShown;
                                          setState(() {});
                                        },
                                      ),
                                    )
                                  : SizedBox.shrink(),
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
                                  onPressed: () {
                                    threeIsBenShown = !threeIsBenShown;
                                    pizzaCounter = threeCounter;
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
                                                  fontSize: 20,
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
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Text(
                                                "120",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Colors.black),
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
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(10),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: IconButton(
                                                  iconSize: 15,
                                                  color: Colors.black,
                                                  onPressed: () {
                                                    setState(() {
                                                      threeCounter--;
                                                    });
                                                  },
                                                  icon: Icon(Icons.remove),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "$threeCounter",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(1),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: IconButton(
                                                  color: Colors.white,
                                                  onPressed: () {
                                                    setState(() {
                                                      threeCounter++;
                                                    });
                                                  },
                                                  icon: Icon(Icons.add),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              threeIsBenShown
                                  ? Container(
                                      width: 75,
                                      height: 141,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(
                                          0xffd30221,
                                        ),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: IconButton(
                                        alignment: Alignment.centerLeft,
                                        iconSize: 40,
                                        icon: Icon(
                                            Icons.restore_from_trash_outlined),
                                        onPressed: () {
                                          threeIsPizzaShown =
                                              !threeIsPizzaShown;
                                          setState(() {});
                                        },
                                      ),
                                    )
                                  : SizedBox.shrink(),
                            ],
                          )
                        : SizedBox.shrink(),
                    SizedBox(
                      height: 10,
                    ),
                    fourIsPizzaShown
                        ? Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              fourIsBenShown = !fourIsBenShown;
                              pizzaCounter = fourCounter;
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
                                        "https://images.contentstack.io/v3/assets/bltbb619fd5c667ba2d/blt2d4e43bcebe1548e/60ca60fa1e0505677a881227/Cheese_Pizza.jpg"),
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
                                            fontSize: 20,
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
                                          "Cheese",
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
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15),
                                        child: Text(
                                          "120",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.black),
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
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: IconButton(
                                            iconSize: 15,
                                            color: Colors.black,
                                            onPressed: () {
                                              setState(() {
                                                fourCounter--;
                                              });
                                            },
                                            icon: Icon(Icons.remove),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "$fourCounter",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(1),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            shape: BoxShape.circle,
                                          ),
                                          child: IconButton(
                                            color: Colors.white,
                                            onPressed: () {
                                              setState(() {
                                                fourCounter++;
                                              });
                                            },
                                            icon: Icon(Icons.add),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        fourIsBenShown
                            ? Container(
                          width: 75,
                          height: 141,
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Color(
                              0xffd30221,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: IconButton(
                            alignment: Alignment.centerLeft,
                            iconSize: 40,
                            icon: Icon(
                                Icons.restore_from_trash_outlined),
                            onPressed: () {
                              fourIsPizzaShown = !fourIsPizzaShown;
                              setState(() {});
                            },
                          ),
                        )
                            : SizedBox.shrink(),
                      ],
                    )
                        : SizedBox.shrink(),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Subtotal",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Text(
                      "${pizzaPrice * pizzaCounter}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.red[900]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 13,
                endIndent: 13,
              ),
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Total",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Text(
                      "${pizzaPrice * (counter + twoCounter + threeCounter)}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.red[900]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Payment()),
                  );
                },
                child: Text(
                  "Payment",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                  fixedSize: Size(double.maxFinite, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
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
