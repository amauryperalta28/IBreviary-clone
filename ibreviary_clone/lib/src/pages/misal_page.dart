import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/models/menu_item.dart';

import 'ibreviary_app_bar.dart';

class MisalPage extends StatelessWidget {
  final textStyle = TextStyle(fontSize: 20.0);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IBreviaryAppBar(
        title: Text('IBreviary'),
      ),
      body: _buildBody(),
      backgroundColor: Colors.orange[200],
    );
  }

  Widget _buildBody() {
    List<MenuItem> options = [
      MenuItem(description:'Ordinario de la Misa', key: 'OficioLectura'),
      MenuItem(description:'Lecturas y Oraciones', key: 'Laudes'),
      MenuItem(description:'Prefacio', key: 'HoraIntermedia'),
      MenuItem(description:'Liturgia Eucaristica', key: 'Visperas'),
      MenuItem(description:'Comunes', key: 'Comunes'),
    ];

    var result = options
        .map((menuItem) => Column(
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.orange[200],
                  child: Center(child: Text(menuItem.description, style: textStyle)),
                ),
                Divider(
                  thickness: 2.0,
                )
              ],
            ))
        .toList();

    return ListView(
      padding: const EdgeInsets.all(8),
      children: result,
    );
  }
}