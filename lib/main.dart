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
        minHeight: MediaQuery.of(context).size.height * 0.10,
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
          'UniVPN',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: <Widget>[
          Container(
              margin: EdgeInsets.only(right: 16),
              child: Icon(Icons.person_outline)),
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
        'Pahingi Load',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}

class Collapsed extends StatelessWidget {
  final TextStyle textStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.125,
            height: MediaQuery.of(context).size.height * 0.0065,
            margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.023),
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
      decoration: BoxDecoration(
          color: Color(0xff1F275D),
          image: DecorationImage(
              image: AssetImage("images/background/background.jpg"),
              fit: BoxFit.cover)),
      child: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Status: '),
                          Text(
                            'Not Connected',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.pink,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: IntrinsicHeight(
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: GestureDetector(
                              onTap: () => print('tapped'),
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  ClipOval(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              colors: <Color>[
                                            Color(0xffAE61FF),
                                            Color(0xff7861FF)
                                          ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(25),
                                    child: ClipOval(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: <Color>[
                                              Color(0xff192152),
                                              Color(0xff141C49)
                                            ])),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.12),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: IntrinsicHeight(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Expanded(
                                  child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text('Select Location')),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 32),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xff202A60),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 14),
                                              child: Center(
                                                child: AspectRatio(
                                                  aspectRatio: 1,
                                                  child: ClipOval(
                                                    child: Container(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: Text(
                                              'Germany',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 24),
                                            ),
                                          ),
                                          Expanded(
                                            child: Center(
                                                child: Icon(
                                              Icons.keyboard_arrow_down,
                                              color: Color(0xff8961E1),
                                              size: 40,
                                            )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: IntrinsicHeight(
                            child: FractionallySizedBox(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(32, 8, 32, 16),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff825FFE),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(24))),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
                                        child: AspectRatio(
                                          aspectRatio: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.all(24.0),
                                            child: Center(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                30))),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 20),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: <Widget>[
                                                    Text(
                                                        'Start your free 3 days trial',
                                                        style: TextStyle(
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    Text(
                                                      'Go Pro to unlock all features',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
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
