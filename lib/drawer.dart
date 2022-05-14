import 'package:flutter/material.dart';
import 'package:untitled1/Screen%20login.dart';
import 'package:untitled1/Settings_Screen.dart';
import 'package:untitled1/cart_screen.dart';
import 'package:untitled1/order.dart';


class DrawerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(),
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Colors.teal,
            ),

            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Hello!!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 100,
                        backgroundImage: NetworkImage(
                          ""
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
                      color: Colors.green,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),

                        TextButton(
                            onPressed: (){
                              Navigator.push(
                               context, MaterialPageRoute(
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
                                SizedBox(width: 20,),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            )
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        TextButton(
                            onPressed: (){
                              Navigator.push(
                                           context, MaterialPageRoute(
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
                                SizedBox(width: 20,),
                                Text(
                                  "My Cart",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            )
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        TextButton(
                            onPressed: (){},
                            child: Row(
                              children: [
                                Icon(
                                    Icons.history,
                                  size: 35,
                                  color: Colors.black,

                                ),
                                SizedBox(width: 20,),
                                Text(
                                  "Order History",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black,


                                  ),
                                ),
                              ],
                            )
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        TextButton(
                            onPressed: (){},
                            child: Row(
                              children: [
                                Icon(
                                    Icons.account_balance_wallet_outlined,
                                  size: 35,
                                  color: Colors.black,

                                ),
                                SizedBox(width: 20,),
                                Text(
                                  "Wallet",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black,


                                  ),
                                ),
                              ],
                            )
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        TextButton(
                            onPressed: (){},
                            child: Row(
                              children: [
                                Icon(
                                    Icons.favorite,
                                  size: 35,
                                  color: Colors.black,

                                ),
                                SizedBox(width: 20,),
                                Text(
                                  "Favorite",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black,


                                  ),
                                ),
                              ],
                            )
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        TextButton(
                            onPressed: (){},
                            child: Row(
                              children: [
                                Icon(
                                  Icons.question_answer,
                                  size: 35,
                                  color: Colors.black,

                                ),
                                SizedBox(width: 20,),
                                Text(
                                  "FQAS",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black,


                                  ),
                                ),
                              ],
                            )
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        TextButton(
                            onPressed: (){},
                            child: Row(
                              children: [
                                Icon(
                                    Icons.support_agent,
                                    size: 35,
                                  color: Colors.black,

                                ),
                                SizedBox(width: 20,),
                                Text(
                                  "Support",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black,


                                  ),
                                ),
                              ],
                            )
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        TextButton(
                            onPressed: (){
                              Navigator.push(
                                context, MaterialPageRoute(
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
                                SizedBox(width: 20,),
                                Text(
                                  "Settings",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black,

                                  ),
                                ),
                              ],
                            )
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        TextButton(
                            onPressed: (){
                              Navigator.push(
                               context,
                               MaterialPageRoute(
                               builder: (context) =>  ScreeLogin(),
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
                                SizedBox(width: 20,),
                                Text(
                                  "Log Out",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black,


                                  ),
                                ),
                              ],
                            )
                        ),
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
      ),
    );
  }
}
