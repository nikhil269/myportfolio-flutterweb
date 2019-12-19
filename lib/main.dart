import 'package:flutter/material.dart';
import 'responsivelayout.dart';
import 'resume.dart';
import 'portfolio.dart';
import 'work.dart';
import 'dart:js' as js;
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:dynamic_theme/theme_switcher_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new DynamicTheme(
        defaultBrightness: Brightness.light,
        data: (brightness) => new ThemeData(
              primarySwatch: Colors.indigo,
              brightness: brightness,
            ),
        themedWidgetBuilder: (context, theme) {
          return new MaterialApp(
            title: 'Flutter Demo',
            theme: theme,
            home: new MyHomePage(),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: ResponsiveLayout.isSmallScreen(context)
          ? Drawer(
              child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountEmail: Text("nchaudhary12155@gmail.com"),
                  accountName: Text("Nikhil Chaudhary"),
                  currentAccountPicture: GestureDetector(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                          "https://avatars3.githubusercontent.com/u/50622386?s=460&v=4"),
                    ),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://miro.medium.com/max/1200/1*l3wujEgEKOecwVzf_dqVrQ.jpeg"),
                          fit: BoxFit.fill)),
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(Icons.home),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("Home"),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(Icons.verified_user),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("Work"),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Work()));
                  },
                ),
              ],
            ))
          : null,
      appBar: ResponsiveLayout.isSmallScreen(context)
          ? AppBar(
              elevation: 0.0,
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.transparent,
              actions: <Widget>[
                RaisedButton(
                  onPressed: changeBrightness,
                  child: const Text("Dark Mode"),
                ),
              ],
              // title: Text(
              //   "Welcome",
              //   style: TextStyle(color: Colors.black),
              // ),
            )
          : null,
      body: ListView(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Container(
                  height: 50,
                  padding: EdgeInsets.only(top: 15, left: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Nikhil Chaudhary",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text("Flutter Developer"),
                    ],
                  ),
                ),
                ResponsiveLayout.isSmallScreen(context)
                    ? SizedBox(
                        width: 150.0,
                      )
                    : SizedBox(
                        width: MediaQuery.of(context).size.width / 2.3,
                      ),
                ResponsiveLayout.isSmallScreen(context)
                    ? Container()
                    : TabBar(
                        controller: tabController,
                        indicatorColor: Colors.black,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey.withOpacity(0.6),
                        isScrollable: true,
                        tabs: <Widget>[
                          Tab(
                            child: Text("About Me",
                                style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                SizedBox(
                  width: 25.0,
                ),
                ResponsiveLayout.isSmallScreen(context)
                    ? Container()
                    : Container(
                        height: 40.0,
                        width: 125.0,
                        child: RaisedButton(
                          padding: EdgeInsets.all(10.0),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Resume()));
                          },
                          color: Colors.yellow,
                          textColor: Colors.black,
                          child: Center(
                            child: Text("Resume",style: TextStyle(
                              color: Colors.black
                            ),),
                          ),
                        ),
                      ),
                // SizedBox(
                //   width: 10,
                // ),
                // ResponsiveLayout.isLargeScreen(context)
                //     ? Container(
                //         height: 40.0,
                //         width: 125.0,
                //         child: RaisedButton(
                //           padding: EdgeInsets.all(10.0),
                //           onPressed: () {
                //             Navigator.push(
                //                 context,
                //                 MaterialPageRoute(
                //                     builder: (context) => Work()));
                //           },
                //           color: Colors.yellowAccent,
                //           textColor: Colors.black,
                //           child: Center(
                //             child: Text("Work"),
                //           ),
                //         ),
                //       )
                //     : Container(),
                SizedBox(
                  width: 10,
                ),
                ResponsiveLayout.isLargeScreen(context)
                    ? Container(
                        height: 40.0,
                        width: 125.0,
                        child: RaisedButton(
                          onPressed: changeBrightness,
                          child: const Text("Dark Mode"),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          ResponsiveLayout.isSmallScreen(context)
              ? Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 350,
                        width: 350,
                        child: ClipOval(
                          child: Image.network(
                            "https://i.ibb.co/yYLGYNk/nikhil.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25.0, top: 10),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "HI IM ",
                                        style: TextStyle(
                                            fontSize: 32,
                                            color: Colors.yellow[600]),
                                      ),
                                      Text(
                                        "NIKHIL CHAUDHARY",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 32),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25.0, top: 10),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "FLUTTER DEVELOPER - ",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "6 MONTH OF EXPERIENCE",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                    "---------------------------------------------------------------------------------"),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25.0, top: 0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "A Young ",
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Text(
                                        "Flutter Developer ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "with",
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25.0, top: 0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "Skills for mobile, web and desktop",
                                        style: TextStyle(fontSize: 23),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Social network",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {
                                          js.context.callMethod("open", [
                                            "https://www.instagram.com/nikhil_chaudhary269/"
                                          ]);
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          child: Image.network(
                                              "http://pluspng.com/img-png/instagram-png-instagram-png-logo-1455.png"),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   width: 30.0,
                                      // ),
                                      InkWell(
                                        onTap: () {
                                          js.context.callMethod("open", [
                                            "https://www.facebook.com/chaudharynikhil.chaudhary"
                                          ]);
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          child: Image.network(
                                              "http://www.transparentpng.com/thumb/facebook-logo/facebook-logo-hd-png-4.png"),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   width: 30.0,
                                      // ),
                                      InkWell(
                                        onTap: () {
                                          js.context.callMethod("open",
                                              ["https://github.com/nikhil269"]);
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          child: Image.network(
                                              "https://image.flaticon.com/icons/svg/25/25231.svg"),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   width: 30.0,
                                      // ),
                                      InkWell(
                                        onTap: () {
                                          js.context.callMethod("open", [
                                            "https://www.linkedin.com/in/nikhil269/"
                                          ]);
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          child: Image.network(
                                              "https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png"),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   width: 30.0,
                                      // ),
                                      InkWell(
                                        onTap: () {
                                          js.context.callMethod("open", [
                                            "https://www.snapchat.com/add/nike12155"
                                          ]);
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          child: Image.network(
                                              "https://www.konfest.com/wp-content/uploads/2019/05/Konfest-PNG-JPG-Image-Pic-Photo-Free-Download-Royalty-Unlimited-clip-art-sticker-Snapchat-Logo-Social-Media-Icon-22.png"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    RaisedButton(
                                      padding: EdgeInsets.only(
                                          left: 30.0,
                                          right: 30.0,
                                          top: 10,
                                          bottom: 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      color: Colors.yellow,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Resume()));
                                      },
                                      child: Text(
                                        "Resume",
                                        style: TextStyle(fontSize: 20,color: Colors.black),
                                      ),
                                    ),
                                    RaisedButton(
                                      color: Colors.yellow[600],
                                      padding: EdgeInsets.only(
                                          left: 30.0,
                                          right: 30.0,
                                          top: 10,
                                          bottom: 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PortFolio()));
                                      },
                                      child: Text(
                                        "Portfolio",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    RaisedButton(
                                      color: Colors.yellow[600],
                                      padding: EdgeInsets.only(
                                          left: 30.0,
                                          right: 30.0,
                                          top: 10,
                                          bottom: 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      onPressed: () {
                                        js.context.callMethod("open",
                                            ["https://github.com/nikhil269"]);
                                      },
                                      child: Text(
                                        "Projects",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                    ),
                                    RaisedButton(
                                      padding: EdgeInsets.only(
                                          left: 30.0,
                                          right: 30.0,
                                          top: 10,
                                          bottom: 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      onPressed: () {
                                        _ackAlert(context);
                                      },
                                      child: Text(
                                        "Hire Me",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    RaisedButton(
                                      padding: EdgeInsets.only(
                                          left: 30.0,
                                          right: 30.0,
                                          top: 10,
                                          bottom: 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      color: Colors.yellow,
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Work()));
                                      },
                                      child: Text(
                                        "Work",
                                        style: TextStyle(fontSize: 20,color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 100.0, top: 50.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 380,
                          width: 380,
                          child: ClipOval(
                            child: Image.network(
                              "https://i.ibb.co/yYLGYNk/nikhil.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 150),
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "HI IM ",
                                        style: TextStyle(
                                            fontSize: 38,
                                            color: Colors.yellow[600]),
                                      ),
                                      Text(
                                        "NIKHIL CHAUDHARY",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 38),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "FLUTTER DEVELOPER - ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "6 MONTH OF EXPERIENCE",
                                        style: TextStyle(fontSize: 23),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                      "---------------------------------------------------------------------------------"),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "A Young ",
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Text(
                                        "Flutter Developer ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "with",
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Skills for mobile, web and desktop",
                                        style: TextStyle(fontSize: 23),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Social network",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        InkWell(
                                          onTap: () {
                                            js.context.callMethod("open", [
                                              "https://www.instagram.com/nikhil_chaudhary269/"
                                            ]);
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            child: Image.network(
                                                "http://pluspng.com/img-png/instagram-png-instagram-png-logo-1455.png"),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30.0,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            js.context.callMethod("open", [
                                              "https://www.facebook.com/chaudharynikhil.chaudhary"
                                            ]);
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            child: Image.network(
                                                "http://www.transparentpng.com/thumb/facebook-logo/facebook-logo-hd-png-4.png"),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30.0,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            js.context.callMethod("open", [
                                              "https://github.com/nikhil269"
                                            ]);
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            child: Image.network(
                                                "https://image.flaticon.com/icons/svg/25/25231.svg"),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30.0,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            js.context.callMethod("open", [
                                              "https://www.linkedin.com/in/nikhil269/"
                                            ]);
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            child: Image.network(
                                                "https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png"),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30.0,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            js.context.callMethod("open", [
                                              "https://www.snapchat.com/add/nike12155"
                                            ]);
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            child: Image.network(
                                                "https://www.konfest.com/wp-content/uploads/2019/05/Konfest-PNG-JPG-Image-Pic-Photo-Free-Download-Royalty-Unlimited-clip-art-sticker-Snapchat-Logo-Social-Media-Icon-22.png"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      RaisedButton(
                                        padding: EdgeInsets.only(
                                            left: 30.0,
                                            right: 30.0,
                                            top: 10,
                                            bottom: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        color: Colors.yellowAccent,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PortFolio()));
                                        },
                                        child: Text(
                                          "Portfolio",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      RaisedButton(
                                        padding: EdgeInsets.only(
                                            left: 30.0,
                                            right: 30.0,
                                            top: 10,
                                            bottom: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        color: Colors.yellowAccent,
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Work()));
                                        },
                                        child: Text(
                                          "Work",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      RaisedButton(
                                        color: Colors.yellow,
                                        padding: EdgeInsets.only(
                                            left: 30.0,
                                            right: 30.0,
                                            top: 10,
                                            bottom: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        onPressed: () {
                                          js.context.callMethod("open", [
                                            "https://www.github.com/nikhil269"
                                          ]);
                                        },
                                        child: Text(
                                          "Projects",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      RaisedButton(
                                        padding: EdgeInsets.only(
                                            left: 30.0,
                                            right: 30.0,
                                            top: 10,
                                            bottom: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        onPressed: () {
                                          _ackAlert(context);
                                        },
                                        child: Text(
                                          "Hire Me",
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Column(
              children: <Widget>[
                Text(
                  "BUILT BY",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "@Nikhil Chaudhary",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Icon(
                      Icons.code,
                      color: Colors.red,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }
}

Future<void> _ackAlert(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Notice'),
        content: const Text(
            'Comming Soon \n For More Info Drop Your Mail At \n nchaudhary12155@gmail.com'),
        actions: <Widget>[
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
            child: Text('WhatsApp Me'),
            onPressed: () {
              js.context.callMethod("open", [
                "https://api.whatsapp.com/send?phone=919904327553&text=Hello%20Nikhil%20,%20I%20Want%20To%20Make%20Flutter%20Application%20"
              ]);
            },
          ),
        ],
      );
    },
  );
}
