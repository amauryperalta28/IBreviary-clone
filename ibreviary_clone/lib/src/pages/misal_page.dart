import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/models/menu_item.dart';

import 'ibreviary_app_bar.dart';

class MisalPage extends StatelessWidget {
  final textStyle = TextStyle(fontSize: 20.0);
  static const routeName = '/misal';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IBreviaryAppBar(
        title: Text('IBreviary'),
        context: context,
      ),
      body: _buildBody(),
      backgroundColor: Color(0xFFd8b374),
    );
  }

  Widget _buildBody() {
    List<MenuItem> options = [
      MenuItem(description:'Ordinario de la Misa', key: 'OrdinarioDeLaMisa'),
      MenuItem(description:'Lecturas y Oraciones', key: 'LecturasYOraciones'),
      MenuItem(description:'Prefacio', key: 'Prefacio'),
      MenuItem(description:'Liturgia Eucaristica', key: 'LiturgiaEucaristica'),
      MenuItem(description:'Comunes', key: 'Comunes'),
    ];

    var result = options
        .map((menuItem) => Column(
              children: <Widget>[
                Container(
                  height: 50,
                  color: Color(0xFFd8b374),
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