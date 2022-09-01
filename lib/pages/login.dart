import 'package:flutter/material.dart';

import '../api/local_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  bool showBiometric = false;
  bool isAuthenticated = false;
  @override
  void initState() {
    isBiometricsAvailable();
    super.initState();
  }

  isBiometricsAvailable() async {
    showBiometric = await BiometricHelper().hasEnrolledBiometrics();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              // color: Colors.amber,
              height: 200,
              width: 250,
              child: Image.asset("assets/images/logo1.png"),
            ),
            Container(
              // color: Colors.amber,
              height: 100,
              width: 100,
              child: Image.asset("assets/images/logo2.png"),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 150),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                color: Colors.grey[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Stack(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25, right: 25),
                        child: Container(
                          color: Colors.white,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.orangeAccent,
                              ),
                              hintText: "Enter Username",
                              labelText: "Username",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Container(
                        color: Colors.white,
                        child: TextField(
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.orangeAccent,
                            ),
                            hintText: "Enter your password",
                            labelText: "Password",
                            suffixIcon: IconButton(
                                color: Colors.orangeAccent,
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                                icon: Icon(_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(325, 50),
                          primary: Colors.orangeAccent),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "/home");
                      },
                      child: Text(
                        "Sign In",
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: Size(325, 50),
                        side: BorderSide(
                          width: 1.2,
                          color: Colors.blue,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Register Now",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 140),
                      child: Text(
                        'Having Trouble Logging in?',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (showBiometric)
                            ElevatedButton(
                              child: Icon(
                                Icons.fingerprint_rounded,
                              ),
                              onPressed: () async {
                                isAuthenticated =
                                    await BiometricHelper().authenticate();
                                if (isAuthenticated)
                                  Navigator.pushReplacementNamed(context, "/home");
                              },
                            ),
                        ],
                      ),
                    ),
                    SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                          child: Icon(
                            Icons.card_giftcard_rounded,
                            size: 30,
                            color: Colors.orangeAccent,
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                          child: Icon(
                            Icons.person_add_alt_1_rounded,
                            size: 30,
                            color: Colors.orangeAccent,
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                          child: Icon(
                            Icons.verified_rounded,
                            size: 30,
                            color: Colors.orangeAccent,
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                          child: Icon(
                            Icons.format_align_justify_rounded,
                            size: 30,
                            color: Colors.orangeAccent,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Offers"),
                        Text("Open "),
                        Text("Hello"),
                        Text("Hello"),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
