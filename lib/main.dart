import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    ScreenUtil.init(context, allowFontScaling: true, width: 1080, height: 1920);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SlidingUpPanel(
        backdropEnabled: true,
        minHeight: ScreenUtil().setHeight(200),
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
  final TextStyle textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: ScreenUtil().setSp(40));

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
            margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(30)),
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
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Status: ',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(35),
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Not Connected',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: ScreenUtil().setSp(35),
                              color: Colors.pink,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.all(ScreenUtil().setHeight(20)),
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
                                    padding: EdgeInsets.all(
                                        ScreenUtil().setHeight(50)),
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
                                    child: Text(
                                      'Select Location',
                                      style: TextStyle(
                                        fontSize: ScreenUtil().setSp(35),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: ScreenUtil().setHeight(32),
                                        horizontal: ScreenUtil().setWidth(60)),
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
                                              padding: EdgeInsets.symmetric(
                                                  vertical: ScreenUtil()
                                                      .setHeight(24)),
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
                                                  fontSize:
                                                      ScreenUtil().setSp(40)),
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
                                padding: EdgeInsets.fromLTRB(
                                    ScreenUtil().setWidth(60),
                                    ScreenUtil().setHeight(16),
                                    ScreenUtil().setWidth(60),
                                    ScreenUtil().setHeight(32)),
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
                                            padding: EdgeInsets.all(
                                                ScreenUtil().setHeight(45)),
                                            child: Center(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20))),
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
                                                padding: EdgeInsets.symmetric(
                                                    vertical: ScreenUtil()
                                                        .setHeight(30)),
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
                                                            fontSize:
                                                                ScreenUtil()
                                                                    .setSp(
                                                                        42.5),
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                    Text(
                                                      'Go Pro to unlock all features',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontSize: ScreenUtil()
                                                            .setSp(32.5),
                                                      ),
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
