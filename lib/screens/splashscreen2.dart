import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreen2 extends StatefulWidget {
  static const String id = 'splash2_screen';
  @override
  _SplashScreen2State createState() => new _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text(
        'Welcome In SplashScreen',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: new Image.network(
          'https://g.acdn.no/obscura/API/dynamic/r1/escenic/tr_1920_1_l_f/2008-11-20T14%3A41%3A39.000%2B0100/archive/02268/13_2268818a.jpg?chk=F19EBC'),
      gradientBackground: new LinearGradient(
          colors: [Colors.cyan, Colors.black26],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: () => print("Flutter Egypt"),
      loaderColor: Colors.white,
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Welcome In SplashScreen Package"),
        automaticallyImplyLeading: false,
      ),
      body: new Center(
        child: new Text(
          "Succeeded!",
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
    );
  }
}
