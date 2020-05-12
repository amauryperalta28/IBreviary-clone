import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/providers/alert_provider.dart';

class HomePage extends StatelessWidget {
  final currDt = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IBreviary'),
        actions: _buildScaffoldActions(context),
      ),
      drawer: _buildDrawer(),
      body: _buildHomeBody(),
      backgroundColor: Colors.orange[200],
    );
  }

  Widget _buildHomeBody() {
    return Column(
      children: <Widget>[
        Row(children: [getEmailIcon()]),
        Center(
            child: Text('Martes, ${currDt.day} de Mayo ${currDt.year}',
                style: TextStyle(fontSize: 20, color: Colors.brown))),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only( top: 15.0),
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
              child: Text('Martes, V semana de Pascua',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.brown,
                      fontStyle: FontStyle.italic)),
            ),
          ],
        )
      ],
    );
  }

  String getMonth(DateTime time, String day) {
    var months = {
      '1': 'Lunes',
      '2': 'Martes',
      '3': 'Miercoles',
      '4': 'Jueves',
      '5': 'Viernes',
      '6': 'Sabado',
      '7': 'Domingo'
    };

    return months[day];
  }

  Widget getEmailIcon() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 40.0, bottom: 30.0),
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

  Widget _buildDrawer() {
    final fontStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
                child: Text(
              'Lunes V semana de Pascua',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            )),
            decoration: BoxDecoration(color: Colors.amber[100]),
          ),
          ListTile(
            title: Text('Breviario', style: fontStyle),
            onTap: () {},
          ),
          ListTile(
            title: Text('Misal', style: fontStyle),
            onTap: () {},
          ),
          ListTile(
            title: Text('Lecturas', style: fontStyle),
            onTap: () {},
          ),
          ListTile(
            title: Text('Oraciones', style: fontStyle),
            onTap: () {},
          ),
          ListTile(
            title: Text('Rituales', style: fontStyle),
            onTap: () {},
          ),
        ],
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
