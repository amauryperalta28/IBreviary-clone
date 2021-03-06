import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/pages/settings_page/settings_page.dart';

import 'package:ibreviary_clone/src/providers/alert_provider.dart';

import 'home_page.dart';

class IBreviaryAppBar extends AppBar {
   static final _textTheme = TextTheme(headline6: TextStyle(color: Color(0xFFb0380a), fontSize: 20.0, fontWeight: FontWeight.w500));

  IBreviaryAppBar({Key key, Widget title, BuildContext context})
      : super(key: key, 
             title: title, 
             actions: buildScaffoldActions(context), 
             textTheme: _textTheme  );

  static List<Widget> buildScaffoldActions(BuildContext context) {
    return <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, HomePage.routeName);
          },
          child: Icon(Icons.home),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {
            alertProvider.showAlert(
                context, 'De verdad quieres descargar las oraciones de hoy?');
          },
          child: Icon(Icons.cloud_download),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SettingsPage.routeName);
            
          },
          child: Icon(Icons.brightness_high),
        ),
      )
    ];
  }
}
