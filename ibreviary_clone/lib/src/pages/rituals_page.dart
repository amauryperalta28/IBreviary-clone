import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/models/menu_item.dart';

import 'ibreviary_app_bar.dart';

class RitualsPage extends StatelessWidget {
  final textStyle = TextStyle(fontSize: 20.0);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IBreviaryAppBar(
        title: Text('IBreviary'),
        context: context,
      ),
      body: _buildBody(),
      backgroundColor: Colors.orange[200],
    );
  }

  Widget _buildBody() {
    List<MenuItem> options = [
      MenuItem(description:'Bautismo', key: 'Bautismo'),
      MenuItem(description:'Matrimonio con Misa', key: 'MatrimonioConMisa'),
      MenuItem(description:'Unción de los enfermos', key: 'UncionDeLosEnfermos'),
      MenuItem(description:'La comunión y el Viático de los enfermos', key: 'ComunionViaticos')
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