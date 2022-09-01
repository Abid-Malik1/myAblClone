import 'package:flutter/material.dart';
import 'package:myabl/utils/constancs.dart';
import 'package:flutter/src/rendering/box.dart';

import '../api/local_auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        backgroundColor: Colors.orangeAccent,
        title: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                ),
              ),
              height: 56,
              width: 200,
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/logo1.png",
                    height: 55,
                    width: 180,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                children: [
                  Icon(
                    Icons.email,
                    size: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                children: [
                  Icon(
                    Icons.settings,
                    size: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  Icon(
                    Icons.power_settings_new,
                    size: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
      body: Card(
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Welcome",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 22,
                          color: Colors.grey),
                      children: [
                        TextSpan(
                          text: 'AbidMalik',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 23,
                              color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Last Login 24Aug 8:18 PM",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  SizedBox(height: 12),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(350, 20),
                        primary: Color.fromARGB(255, 255, 255, 255)),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/login");
                    },
                    child: Text(
                      "View Balance",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 190,
                        width: 128,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.blue, width: 0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Icon(Icons.account_balance_wallet),
                        ),
                      ),
                      Container(
                        height: 190,
                        width: 128,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.blue, width: 0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Icon(Icons.wallet_giftcard_rounded),
                        ),
                      ),
                      Container(
                        height: 190,
                        width: 128,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.blue, width: 0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Icon(Icons.wallet_giftcard_rounded),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        height: 190,
                        width: 128,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.blue, width: 0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Icon(Icons.wallet_giftcard_rounded),
                        ),
                      ),
                      Container(
                        height: 190,
                        width: 128,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.blue, width: 0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Icon(Icons.wallet_giftcard_rounded),
                        ),
                      ),
                      Container(
                        height: 190,
                        width: 128,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.blue, width: 0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Icon(Icons.wallet_giftcard_rounded),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        height: 190,
                        width: 128,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.blue, width: 0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Icon(Icons.wallet_giftcard_rounded),
                        ),
                      ),
                      Container(
                        height: 190,
                        width: 128,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.blue, width: 0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Icon(Icons.wallet_giftcard_rounded),
                        ),
                      ),
                      Container(
                        height: 190,
                        width: 128,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.blue, width: 0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Icon(Icons.wallet_giftcard_rounded),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
