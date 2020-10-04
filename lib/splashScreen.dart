import 'dart:async';
import 'package:clockprojectprototype/introPage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 7);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => introPage()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    bool _visible = true;
    return Container(
      padding: EdgeInsets.fromLTRB(45, 50, 0, 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 600.0,
            child: Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  opacity: _visible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 1000),
                  child: Image.asset(
                    "assets/column_torch_e0.gif",
                    height: 125.0,
                  ),
                ),
                AnimatedOpacity(
                  opacity: _visible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 1000),
                  child: Image.asset(
                    "assets/TheEveryday2.gif",
                    height: 125.0,
                    width: 225.0,
                  ),
                ),
                AnimatedOpacity(
                  opacity: _visible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 1000),
                  child: Image.asset(
                    "assets/column_torch_e0.gif",
                    height: 125.0,
                  ),
                ),
              ],
            ),
          ),
          AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: Duration(milliseconds: 1000),
            child: Image.asset(
              "assets/oracle_animatedc.gif",
              height: 125.0,
              width: 225.0,
            ),
          ),
        ],
      ),
    );
  }
}
