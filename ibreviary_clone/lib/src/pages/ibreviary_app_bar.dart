import 'package:flutter/material.dart';

class IBreviaryAppBar extends AppBar {

    IBreviaryAppBar({Key key, Widget title})
    : super(key: key, title: title, actions: buildScaffoldActions());

    static List<Widget> buildScaffoldActions() {
    return <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {},
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

