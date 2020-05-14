import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/models/menu_item.dart';

import 'ibreviary_app_bar.dart';

class BreviaryPage extends StatelessWidget {
  final _textStyle = TextStyle(fontSize: 20.0);
  static const routeName = '/breviary';
  
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
      MenuItem(description:'Oficio de Lecturas', key: 'OficioLectura'),
      MenuItem(description:'Laudes', key: 'Laudes'),
      MenuItem(description:'Hora Intermedia', key: 'HoraIntermedia'),
      MenuItem(description:'Visperas', key: 'Visperas'),
      MenuItem(description:'Completas', key: 'Completas'),
      MenuItem(description:'Comunes', key: 'Comunes'),
    ];

    var result = options
        .map((menuItem) => Column(
              children: <Widget>[
                Container(
                  height: 50,
                  color: Color(0xFFd8b374),
                  child: Center(child: Text(menuItem.description, style: _textStyle)),
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
