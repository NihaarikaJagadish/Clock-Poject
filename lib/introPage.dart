import 'package:clockprojectprototype/analogClockPage.dart';
import 'package:clockprojectprototype/eOracleTimer.dart';
import 'package:flutter/material.dart';

class introPage extends StatefulWidget {
  @override
  _introPageState createState() => _introPageState();
}

class _introPageState extends State<introPage> {
  changeTheIcon() {}
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/background2.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10, 10),
            child: ListView(
              children: [
                Image.asset(
                  "assets/TheEveryday2.gif",
                  height: 125.0,
                  width: 225.0,
                ),
                Image.asset(
                  "assets/oracle_animatedc.gif",
                  height: 90.0,
                  width: 225.0,
                ),
                Text(
                  "The Synchronicity Watch",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.yellowAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Communicating with Spirit by using Common Symbols",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  " Relax, take a deep breath, and calm yourself.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150.0,
                      height: 70.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => Analog()));
                        },
                        color: Colors.brown,
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "eOracle",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      height: 70,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => changeOnClick()));
                        },
                        color: Colors.brown,
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "eOracle Timer",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150.0,
                    ),
                  ],
                ),
                Text(
                  " Open the Watch-It by pushing the E Oracle button. Now think upon a question or issue. Concentrate on it. Then click on the button in the E Oracle window. An instantaneous symbol of the moment will appear -- the answer to your question!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "You can use the E Oracle Timer button, much like a clock. A continuous series of “random” but meaningful icons will appear and then disappear. If you have an impulse to look at it, note what symbol is there for you right at that instant -- and what thought were you just having? Is there a connection? Also, if you wish an inspired or fresh view of your present situation, you can check out the symbol of the moment and see what gives!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
