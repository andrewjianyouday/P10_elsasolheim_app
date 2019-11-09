import 'dart:async';
import 'package:elsasolheim/screens/dashboardscreen.dart';

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

// This is the Splash Screen
class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 2000));

    _animation = new CurvedAnimation(
      parent: _animationController,
      curve: Curves.bounceInOut,
    );

    _animation.addListener(() => this.setState(() {}));
    _animationController.forward();

    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DashboardScreen()));
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            child: Center(
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    'https://g.acdn.no/obscura/API/dynamic/r1/escenic/tr_1920_1_l_f/2008-11-20T14%3A41%3A39.000%2B0100/archive/02268/13_2268818a.jpg?chk=F19EBC',
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Align(
              alignment: Alignment(0.1, 0.50),
              child: FadeTransition(
                opacity: _animation,
                child: Text(
                  'mobelarkitekter.no',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Brandon thin'),
                ),
              ),
            ),
//          Container(
//            decoration: BoxDecoration(
//              image: DecorationImage(
//                image: new NetworkImage(
//                    'https://g.acdn.no/obscura/API/dynamic/r1/escenic/tr_1920_1_l_f/2008-11-20T14%3A41%3A39.000%2B0100/archive/02268/13_2268818a.jpg?chk=F19EBC'),
//                fit: BoxFit.cover,
//              ),
//            ),
//            child: Align(
//              alignment: Alignment(0.1, 0.50),
//              child: Text(
//                'Elsa Solheim',
//                style: TextStyle(
//                  color: Colors.white,
//                  fontSize: 30,
//                ),
//              ),
//            ),
//          ),

//          Positioned(
//            child: AppBar(
//              title: Text("Transparent AppBar"),
//              backgroundColor: Colors.transparent,
//              elevation: 0,
//              actions: <Widget>[
//                IconButton(
//                  icon: Icon(Icons.share),
//                  onPressed: () {},
//                  tooltip: 'Share',
//                ),
//              ],
//            ),
          ),
        ],
      ),
    );
  }
}
