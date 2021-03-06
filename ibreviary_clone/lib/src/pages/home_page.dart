import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/pages/notifications_page.dart';
import 'package:ibreviary_clone/src/pages/sidebar_menu.dart';
import 'package:ibreviary_clone/src/utils/date_utils.dart';

import 'ibreviary_app_bar.dart';

class HomePage extends StatelessWidget {
  final _currentDate = DateTime.now();
  static const routeName = '/home';
  final _fontColor = Color(0xFF362613);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IBreviaryAppBar(
        title: Text('IBreviary'),
        context: context,
      ),
      drawer: SideBarMenu(),
      body: _buildHomeBody(context),
      backgroundColor: Color(0xFFd8b374),
    );
  }

  Widget _buildHomeBody(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(children: [getEmailIcon(context)]),
        Center(
            child: Text(
                '${dateUtils.getCurrentDayName()}, ${_currentDate.day} de Mayo ${_currentDate.year}',
                style: TextStyle(fontSize: 20, color: _fontColor))),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: Text('IBreviary',
                  style: TextStyle(
                      fontSize: 60,
                      color: _fontColor,
                      fontFamily: 'Winchester')),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Text(
                  '${dateUtils.getCurrentDayName()}, V semana de Pascua',
                  style: TextStyle(
                      fontSize: 20,
                      color: _fontColor,
                      fontStyle: FontStyle.italic)),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 25.0),
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('TIPO', style: TextStyle(color: Colors.white)),
                  Text('HORA', style: TextStyle(color: Colors.white))
                ],
              ),
              VerticalDivider(
                  indent: 30, endIndent: 20, thickness: 20, width: 15),
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                        width: 0.0,
                        color: Colors.black,
                        style: BorderStyle.solid),
                  ),
                ),
                child: Column(
                  children: <Widget>[Text('Feria'), Text('Pascua')],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget getEmailIcon(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, bottom: 30.0),
        child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, NotificationsPage.routeName);
            },
            child: Badge(
              badgeColor: Color(0xFFb0380a),
              badgeContent: Text('1'),
              child: Icon(
                Icons.email,
                size: 40.0,
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}
