import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IBreviary'),
        actions: _buildActions(),
      ),
      drawer: Drawer(
        child: _buildDrawer(),
      ),
      body: Text('Body'),
    );
  }

  Widget _buildDrawer() {
    final fontStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800);

    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Center(child: Text('Lunes V semana de Pascua')),
          decoration: BoxDecoration(color: Colors.amber),
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
    );
  }

  List<Widget> _buildMenuItems() {}

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
