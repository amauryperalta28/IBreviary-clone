import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/pages/sidebar_menu.dart';
import 'package:ibreviary_clone/src/providers/alert_provider.dart';
import 'package:ibreviary_clone/src/utils/date_utils.dart';

class HomePage extends StatelessWidget {
  final _currentDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IBreviary'),
        actions: _buildScaffoldActions(context),
      ),
      drawer: SideBarMenu(),
      body: _buildHomeBody(),
      backgroundColor: Colors.orange[200],
    );
  }

  Widget _buildHomeBody() {
    return Column(
      children: <Widget>[
        Row(children: [getEmailIcon()]),
        Center(
            child: Text(
                '${dateUtils.getDay()}, ${_currentDate.day} de Mayo ${_currentDate.year}',
                style: TextStyle(fontSize: 20, color: Colors.brown))),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: Text('IBreviary',
                  style: TextStyle(
                      fontSize: 60,
                      color: Colors.brown,
                      fontFamily: 'Winchester')),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Text('${dateUtils.getDay()}, V semana de Pascua',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.brown,
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

  Widget getEmailIcon() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, bottom: 30.0),
        child: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.email,
            size: 40.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  List<Widget> _buildScaffoldActions(BuildContext context) {
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
            alertProvider.showAlert(context, 'Download');
          },
          child: Icon(Icons.cloud_download),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {
            alertProvider.showAlert(context, 'Settings');
          },
          child: Icon(Icons.brightness_high),
        ),
      )
    ];
  }
}
