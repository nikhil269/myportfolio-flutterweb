import 'package:flutter/material.dart';
import 'responsivelayout.dart';

class PortFolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "PortFolio",
          style: TextStyle(color: Colors.yellow),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ResponsiveLayout.isSmallScreen(context)
              ? Column(
                  children: <Widget>[
                    smallCard(
                        context,
                        "https://blog.codemagic.io/uploads/CM_Android-dev-Flutter_FB.png",
                        "Android App With Flutter",
                        "Flutter is Google's mobile SDK for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source."),
                    smallCard(
                        context,
                        "https://miro.medium.com/max/1200/1*VkFBn6nB2CgX2L2H_juz3A.png",
                        "iOS App With Flutter",
                        "Flutter is Google's mobile SDK for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source."),
                    smallCard(
                        context,
                        "https://blog.codemagic.io/uploads/2019/05/CM_Flutter-web-desktop.13c1295ae5c2cee09a10777294ab4fc41ee93ac09b9ca4a41222fd532c9c699d.png",
                        "Web App With Flutter(Preview)",
                        "Flutter is Google's mobile SDK for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source."),
                    smallCard(
                        context,
                        "https://i.ytimg.com/vi/KOhzWV9rNt0/maxresdefault.jpg",
                        "Desktop App With Flutter(Preview)",
                        "Flutter is Google's mobile SDK for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.")
                  ],
                )
              : Container(
                  child: Column(
                    children: <Widget>[
                      bigCard(
                          context,
                          "https://blog.codemagic.io/uploads/CM_Android-dev-Flutter_FB.png",
                          "Android App With Flutter",
                          "Flutter is Google's mobile SDK for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source."),
                      bigCard(
                          context,
                          "https://miro.medium.com/max/1200/1*VkFBn6nB2CgX2L2H_juz3A.png",
                          "iOS App With Flutter",
                          "Flutter is Google's mobile SDK for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source."),
                      bigCard(
                          context,
                          "https://blog.codemagic.io/uploads/2019/05/CM_Flutter-web-desktop.13c1295ae5c2cee09a10777294ab4fc41ee93ac09b9ca4a41222fd532c9c699d.png",
                          "Web App With Flutter(Preview)",
                          "Flutter is Google's mobile SDK for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source."),
                      bigCard(
                          context,
                          "https://i.ytimg.com/vi/KOhzWV9rNt0/maxresdefault.jpg",
                          "Desktop App With Flutter(Preview)",
                          "Flutter is Google's mobile SDK for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.")
                    ],
                  ),
                )
        ],
      ),
    );
  }
}

Widget smallCard(BuildContext context, var imagelink, var tittle, var contain) {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.68,
          width: MediaQuery.of(context).size.width,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.blue[50],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.network(imagelink),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text(
                        tittle,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        contain,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )
    ],
  );
}

Widget bigCard(BuildContext context, var imagelink, var tittle, var contain) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.blue[50],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.network(imagelink),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    tittle,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: ResponsiveLayout.isSmallScreen(context)
                      ? Container(
                          child: Text(
                            contain,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 15),
                          ),
                        )
                      : Text(
                          "Flutter is Google's mobile SDK for crafting high-quality native interfaces on\n iOS and Android in record time. Flutter works with existing code, is used by developers \nand organizations around the world, and is free and open source.",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
