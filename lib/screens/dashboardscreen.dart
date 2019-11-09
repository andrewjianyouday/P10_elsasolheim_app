import 'package:elsasolheim/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:responsive_container/responsive_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardScreen extends StatefulWidget {
  static const String id = 'dashoard_screen';
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    ResponsiveContainer(
      heightPercent: 50.0, //value percent of screen total height
      widthPercent: 50.0, //value percent of screen total width
    );
    Widget image_slider_carousel = ResponsiveContainer(
      heightPercent: 40.0,
      widthPercent: 40.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          NetworkImage(
              'http://mobelarkitekter.no/wp-content/uploads/2019/05/enkim--1024x601.jpg'),
          NetworkImage(
              'http://mobelarkitekter.no/wp-content/uploads/2019/05/arknytt_1995-300x300.jpg'),
          NetworkImage(
              'http://mobelarkitekter.no/wp-content/uploads/2019/06/02_arr_omoss-1024x682.jpg'),
          NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6Obu4Diw_qwSZRhmCzdlkwLbD3asg5OvNsVwXqHIUMnt3dr1Vtg&s'),
          NetworkImage(
              'https://www.universitetsavisa.no/incoming/article18359789.ece/sozntb/ALTERNATES/w980-default/Siri%20Solheim%20Hegna'),
          ExactAssetImage("images/logo.jpg"),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Elsa og Nordahl Solheim'),
      ),
      body: ListView(
        children: <Widget>[
          image_slider_carousel,
          _menuBox(context),
        ],
      ),
    );
  }
}


Widget _onPressedBtn1(BuildContext context) {
  return Container(
    height: 100.0,
    child: InkWell(
            onTap: (){
              print('hahah');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SplashScreen()),
              );

                        },

        ),
  );

}

Widget _menuBox(BuildContext context) {
  return SingleChildScrollView(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: <Widget>[
        const SizedBox(height: 00.0),
        Row(
          children: <Widget>[
            Expanded(

              child: Column(


                children: <Widget>[
                  Container(
                    height: 190,
                    color: Colors.blue,
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'Home',
                            style:
                            Theme.of(context).textTheme.display1.copyWith(
                              color: Colors.white,
                              fontSize: 24.0,
                            ),

                          ),



                        ),
                        _onPressedBtn1(context),


                      ],
                    ),

//                    child: InkWell(
//                      highlightColor: Colors.redAccent,
//                      splashColor: Colors.yellow,
//                      onLongPress: (){
//                        print('hahah');
//                        Navigator.push(
//                          context,
//                          MaterialPageRoute(builder: (context) => SplashScreen()),
//                        );
//
//                      },
//                      child: Text('Go back!'),
//
//
//
//
//                    ),


                  ),
                  const SizedBox(height: 10.0),
                  Container(

                    height: 120,
                    color: Colors.green,
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            "Address",
                            style:
                                Theme.of(context).textTheme.display1.copyWith(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                    ),
                          ),
                          trailing: Icon(
                            FontAwesomeIcons.mapMarked,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            'google map',
                          ),

                        )
                      ],
                    ),

                  ),
                ],
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 120,
                    color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            "About us",
                            style:
                                Theme.of(context).textTheme.display1.copyWith(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                    ),
                          ),
                          trailing: Icon(
                            FontAwesomeIcons.user,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            'Our glorious history.....read more >>> ',
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 190,
                    color: Colors.yellow,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            "Product",
                            style:
                                Theme.of(context).textTheme.display1.copyWith(
                                      fontSize: 24.0,
                                      color: Colors.black,
                                    ),
                          ),
                          trailing: Icon(
                            FontAwesomeIcons.chair,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            'many',
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: new Column(
            children: <Widget>[
              Container(
                height: 280,
                color: Colors.cyan,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        "image..",
                        style: Theme.of(context).textTheme.display1.copyWith(
                              color: Colors.white,
                              fontSize: 24.0,
                            ),
                      ),
                      trailing: Icon(
                        FontAwesomeIcons.home,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Norway',
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
