import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IBreviary'),
        actions: _buildActions(),
      ),
      drawer: _buildDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 5.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.email,
                  size: 40.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(),
          Container(child: Center(child: Text('Lunes, 11 de Mayo 2020')))
        ],
      ),
      backgroundColor: Colors.orange[200],
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

  List<Widget> _buildActions() {
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
          onTap: () {},
          child: Icon(Icons.cloud_download),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {},
          child: Icon(Icons.brightness_high),
        ),
      )
    ];
  }
}
