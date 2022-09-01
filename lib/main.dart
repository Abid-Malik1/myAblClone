import 'package:flutter/material.dart';
import 'package:myabl/pages/login.dart';

import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: new ThemeData(
      //   scaffoldBackgroundColor: const Color.fromARGB(248, 248, 248, 250),
      // ),
      home: HomePage(),
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
