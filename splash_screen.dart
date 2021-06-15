import 'dart:async';

import 'package:flutter/material.dart';

import 'login_screen.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 6);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => LoginScreen()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: new Color(0xFF880E4F),
                gradient: LinearGradient(colors: [(new  Color(0xFF880E4F)), new Color(0xFF880E4F)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
          Center(
            child: Container(
              child: Image.asset("images/app_logo.png"),
              height: 120,
              width: 120,

            ),

          ),
          Container(
            margin: EdgeInsets.only(right: 20, top: 20),
            alignment: Alignment.bottomCenter,
            child: Text(
              "African union Commission",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,




              ),
            ),
          )
        ],
      ),
    );
  }
}