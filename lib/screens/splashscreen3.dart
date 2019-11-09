import 'package:elsasolheim/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreen3 extends StatefulWidget {
  static const String id = 'splash3_screen';
  @override
  _SplashScreen3State createState() => new _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: new Column(children: <Widget>[
          Divider(
            height: 240.0,
            color: Colors.white,
          ),
          new Image.network(
            'https://g.acdn.no/obscura/API/dynamic/r1/escenic/tr_1920_1_l_f/2008-11-20T14%3A41%3A39.000%2B0100/archive/02268/13_2268818a.jpg?chk=F19EBC',
            fit: BoxFit.contain,
//            repeat: ImageRepeat.noRepeat,
//            width: 170.0,
          ),
          new Column(
            children: <Widget>[
              Text(
                'Elsa Solheim',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
