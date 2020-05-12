import 'package:flutter/material.dart';

class IBreviaryAppBar extends AppBar {
    IBreviaryAppBar({Key key, Widget title, BuildContext context})
    : super(key: key, title: title, actions: buildScaffoldActions(context));

    static List<Widget> buildScaffoldActions(BuildContext context) {
    return <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'home');
          },
          child: Icon(Icons.home),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {

          },
          child: Icon(Icons.cloud_download),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {
 
          },
          child: Icon(Icons.brightness_high),
        ),
      )
    ];
  }

}

