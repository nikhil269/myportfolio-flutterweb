import 'package:flutter/material.dart';
import 'package:portfolio/responsivelayout.dart';
import 'package:universal_html/prefer_universal/html.dart' as html;

class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Work",
          style: TextStyle(color: Colors.yellow),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ResponsiveLayout.isSmallScreen(context)
              ? Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500.0,
                  color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Image.network(
                            "https://creart.in/wp-content/uploads/2016/12/creart-full-logo.png"),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "CreArt Solutions Official App",
                            style: TextStyle(
                                fontSize: 28.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "All About CreArt Solutions Official Android Application made with flutter to use for show services and work",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w300),
                          ),
                          InkWell(
                            onTap: () {
                              html.window.open(
                                  "https://play.google.com/store/apps/details?id=com.creart.creart",
                                  "android");
                            },
                            child: Container(
                                height: 100,
                                width: 160,
                                child: Image.network(
                                  "https://www.instagram.com/static/images/appstore-install-badges/badge_android_english-en.png/e9cd846dc748.png",
                                  fit: BoxFit.contain,
                                )),
                          ),
                          Container(
                            height: 100,
                            width: 200,
                            child: Image.network(
                              "https://s3.amazonaws.com/kinlane-productions/github/run-on-github-button.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            "Source Code is Not Available Yet",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w700),
                          )
                        ],
                      )
                    ],
                  ),
                )
              : Container(
                  width: MediaQuery.of(context).size.width,
                  height: 320.0,
                  color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Image.network(
                            "https://creart.in/wp-content/uploads/2016/12/creart-full-logo.png"),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "CreArt Solutions Official App",
                            style: TextStyle(
                                fontSize: 28.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "All About CreArt Solutions Official Android Application made with flutter to use for show services and work",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w300),
                          ),
                          InkWell(
                            onTap: () {
                              html.window.open(
                                  "https://play.google.com/store/apps/details?id=com.creart.creart",
                                  "android");
                            },
                            child: Container(
                                height: 100,
                                width: 160,
                                child: Image.network(
                                  "https://www.instagram.com/static/images/appstore-install-badges/badge_android_english-en.png/e9cd846dc748.png",
                                  fit: BoxFit.contain,
                                )),
                          ),
                          Container(
                            height: 100,
                            width: 200,
                            child: Image.network(
                              "https://s3.amazonaws.com/kinlane-productions/github/run-on-github-button.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            "Source Code is Not Available Yet",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w700),
                          )
                        ],
                      )
                    ],
                  ),
                ),

// Lazycart Application     Shopping Applicationnnnnn.....

          ResponsiveLayout.isSmallScreen(context)
              ? Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500.0,
                  color: Colors.blue[400],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Image.network(
                            "https://lazycart.in/wp-content/uploads/2016/01/160-l.png"),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "LazyCart",
                            style: TextStyle(
                                fontSize: 28.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Lazycart.in is India based online food and grocery store.",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w300),
                          ),
                          InkWell(
                            onTap: () {
                              // html.window.open(
                              //     "https://play.google.com/store/apps/details?id=com.creart.creart",
                              //     "android");
                            },
                            child: Container(
                                height: 100,
                                width: 160,
                                child: Image.network(
                                  "https://www.instagram.com/static/images/appstore-install-badges/badge_android_english-en.png/e9cd846dc748.png",
                                  fit: BoxFit.contain,
                                )),
                          ),
                          Container(
                            height: 100,
                            width: 200,
                            child: Image.network(
                              "https://s3.amazonaws.com/kinlane-productions/github/run-on-github-button.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            "Source Code is Not Available Yet",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w700),
                          )
                        ],
                      )
                    ],
                  ),
                )
              : Container(
                  width: MediaQuery.of(context).size.width,
                  height: 320.0,
                  color: Colors.blue[400],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Image.network(
                            "https://lazycart.in/wp-content/uploads/2016/01/160-l.png"),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "LazyCart",
                            style: TextStyle(
                                fontSize: 28.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Lazycart.in is India based online food and grocery store.",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w300),
                          ),
                          InkWell(
                            onTap: () {
                              // html.window.open(
                              //     "https://play.google.com/store/apps/details?id=com.creart.creart",
                              //     "android");
                            },
                            child: Container(
                                height: 100,
                                width: 160,
                                child: Image.network(
                                  "https://www.instagram.com/static/images/appstore-install-badges/badge_android_english-en.png/e9cd846dc748.png",
                                  fit: BoxFit.contain,
                                )),
                          ),
                          Container(
                            height: 100,
                            width: 200,
                            child: Image.network(
                              "https://s3.amazonaws.com/kinlane-productions/github/run-on-github-button.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            "Source Code is Not Available Yet",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w700),
                          )
                        ],
                      )
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
