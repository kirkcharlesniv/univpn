import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unirises VPN',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SlidingUpPanel(
        backdropEnabled: true,
        minHeight: MediaQuery
            .of(context)
            .size
            .height * 0.12,
        borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
        panel: Theme(
            data: ThemeData(brightness: Brightness.light), child: Panel()),
        collapsed: Theme(
            data: new ThemeData(brightness: Brightness.light),
            child: Collapsed()),
        body: Body(),
      ),
      appBar: AppBar(
        leading: Icon(Icons.settings),
        title: Text(
          'UnoVPN',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: <Widget>[
          Container(
              margin: EdgeInsets.only(right: 16),
              child: Icon(Icons.network_wifi)),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}

class Panel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Sliding Widget',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

class Collapsed extends StatelessWidget {
  final TextStyle textStyle =
  TextStyle(color: Colors.black, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width * 0.125,
            height: MediaQuery
                .of(context)
                .size
                .height * 0.0065,
            margin: EdgeInsets.only(
                bottom: MediaQuery
                    .of(context)
                    .size
                    .height * 0.023),
            decoration: BoxDecoration(
              color: Color(0xffCFD5DE),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Swipe Up', style: textStyle),
              Container(
                child: Icon(
                  Icons.arrow_drop_up,
                  size: 37.5,
                  color: Color(0xffFF8300),
                ),
              ),
              Text('Speed Up', style: textStyle)
            ],
          )
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Placeholder(),
                    ),
                    Expanded(
                      flex: 3,
                      child: Placeholder(),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    margin: EdgeInsets.only(
                        bottom: MediaQuery
                            .of(context)
                            .size
                            .height * 0.12),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Placeholder(),
                        ),
                        Expanded(
                          child: Placeholder(),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
