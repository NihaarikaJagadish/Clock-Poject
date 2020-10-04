import 'dart:async';
import 'dart:math';
import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Analog extends StatefulWidget {
  @override
  _AnalogState createState() => _AnalogState();
}

class _AnalogState extends State<Analog> {
  bool _visible = true;
  final _random = new Random();
  List<String> photos = [
    "assets/2.jpg",
    "assets/3.jpg",
    "assets/4.jpg",
    "assets/5.jpg",
    "assets/7.jpg",
    "assets/11.jpg",
    "assets/12.jpg",
    "assets/14.jpg",
    "assets/15.jpg",
    "assets/16.jpg",
    "assets/17.jpg",
    "assets/18.jpg",
    "assets/19.jpg",
    "assets/20.jpg",
  ];
  List<String> desc = [
    ''' Left & Right. Horizontal. Harmony as ideal. Win-win. counterbalance. Relating as equals. Latitude.
            East-West. Lateral
            [go]''',
    '''Up & Down. Top - bottom. Vertical. Counterbalance. Hierarchy. Superior/inferior. Winner/loser.
            Longitude. North-South
            [wait]''',
    '''Recycle. Think of the big picture. Do the right thing. What goes around, comes around.  Karma,
            cycles, give and take.
            [go]''',
    '''Look. Look closer. Read. clarify. focus. view. Adjust your vision.
            [wait]''',
    '''Above. Look up. high. up. positive. optimism. North.
            [go]''',
    '''Neutral. unmoved, ignorant, ennui. waiting. nonchalant.
            [wait]''',
    '''Unhappy, sad, angry. hurt. unpleasant.
            [stop]''',
    '''Moon.  Home. Family. Move, fertility, writing, memories, commerce or trade, food and security,
            silver. Careful of subjectivity or taking things too personally. If it is full moon time, careful of loony
            tunes (from Luna)!             
            People: older female/mother, nurturer, provider of (emotional) security, babies and those who care
            for them, worriers.
            [wait]''',
    '''Sun.   Life, vitality, spirit, independence, creativity, performance, recognition, popularity, the theater,
            originality, gold. Careful of ego.
            People:  public speakers, performers, mentors, educators, actors.
            [go]''',
    '''Mars.  Sports, danger, action, courage, exercise, tools, martial arts, assertiveness, desire and attainment,
           adventures, careful of impulsiveness!
           People: male(s), military, mechanics, athletes, heroes, protectors & abusers. exercise buddies
           [go]''',
    '''Venus.  Love and beauty. art, music, dance, romance, gifts, money, pleasures, jewelry and adornments,
           careful of being influenced!  
           People: female(s), artists, musicians, friends, florists, art lovers.
           [go]''',
    '''Yin-yang.   Harmony in opposites. Divine balance. Tao or “the way”. Flow. Seasons and cycles.
           Masculine and feminine. Positive and negative. Complementary. Go for harmony.
           [wait]''',
    '''Subtract.  Take away. minus. negative. Step back. Retreat. subtraction.
           [stop]''',
    '''Add.  Add this to your life. Plus. This is a plus. Positive. enhancement. addition.
           [go]'''
  ];
  int _pos = 0;
  Timer _timer;
  Timer _timer1;
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIOverlays([]);
    _timer = Timer.periodic(Duration(seconds: 5), (Timer t) {
      setState(() {
        if (_visible == true) {
          _visible = false;
        } else {
          int next(int min, int max) => min + _random.nextInt(max - min);
//          _pos = (_pos + 1) % photos.length;
          _pos = next(0, photos.length);
          _visible = true;
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    _timer = null;
    super.dispose();
  }

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
//          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
//          appBar: AppBar(
//            backgroundColor: Colors.transparent,
////                backgroundColor: Colors.black,
//            title: Text(
//              '',
//              style: TextStyle(color: Colors.red),
//            ),
//          ),
          body: Container(
              constraints: BoxConstraints.expand(),
              child: Column(
                children: [
//                  Padding(
//                    padding: EdgeInsets.all(10.0),
//                  ),
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
                  Expanded(
                    child: AnalogClock(
                      decoration: BoxDecoration(
                          border: Border.all(width: 3.0, color: Colors.black),
                          color: Colors.black,
                          shape: BoxShape.circle),
                      width: 200.0,
                      isLive: true,
                      hourHandColor: Colors.white,
                      minuteHandColor: Colors.white,
                      showSecondHand: true,
                      numberColor: Colors.white,
                      showNumbers: true,
                      textScaleFactor: 1.5,
                      showTicks: true,
                      showDigitalClock: true,
                      digitalClockColor: Colors.white,
                      datetime: DateTime(2020, 8, 4, 9, 11, 0),
                    ),
                  ),
                  Text(
                    "Focus on your question!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: _visible ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 500),
                    child: Image.asset(
                      photos[_pos],
                      height: 125.0,
                      width: 125.0,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 100.0),
                    child: AnimatedOpacity(
                      opacity: _visible ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 500),
                      child: Text(
                        desc[_pos],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
