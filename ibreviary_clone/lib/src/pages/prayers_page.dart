import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/models/menu_item.dart';

import 'ibreviary_app_bar.dart';

class PrayersPage extends StatelessWidget {
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
      MenuItem(description:'Ave Maria', key: 'AveMaria'),
      MenuItem(description:'Misterios del Rosario', key: 'MisteriosRosario'),
      MenuItem(description:'El Santo Rosario', key: 'ElSantoRosario'),
      MenuItem(description:'Letanias Lauretanas', key: 'LetaniasLauretanas'),
      MenuItem(description:'Magnificat', key: 'Magnificat'),
      MenuItem(description:'Salve', key: 'Salve'),
      MenuItem(description:'El Angelus', key: 'El Angelus'),
      MenuItem(description:'Reina del Cielo', key: 'ReinaCielo'),
      MenuItem(description:'Bendita sea tu pureza', key: 'BenditaPureza'),
      MenuItem(description:'Sub tuum praesidium. Bajo tu amparo nos acogemos', key: 'Amparo'),
      MenuItem(description:'Simbolo de los Apostoles', key: 'SimboloApostoles'),
      MenuItem(description:'Te Deum', key: 'TeDeum'),
      MenuItem(description:'Himno <<Veni Creator>>', key: 'VeniCreator'),
      MenuItem(description:'Secuencia del Pentecostes', key: 'SecuenciaPentecostes'),
      MenuItem(description:'Padre Nuestro', key: 'PadreNuestro'),
      MenuItem(description:'Alma de Cristo', key: 'AlmaCristo'),
      MenuItem(description:'Lauda Sion(latino)', key: 'Lauda'),
      MenuItem(description:'Gloria', key: 'Gloria'),
      MenuItem(description:'El credo Niceno', key: 'CredoNiceno'),
      MenuItem(description:'Adoracion Eucaristica', key: 'AdoracionEucaristica')
      
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