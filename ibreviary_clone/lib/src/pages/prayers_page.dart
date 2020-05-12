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

  List<MenuItem> _getMenuItems() {
    List<MenuItem> options = [
      MenuItem(description: 'Ave Maria', key: 'AveMaria'),
      MenuItem(description: 'Misterios del Rosario', key: 'MisteriosRosario'),
      MenuItem(description: 'El Santo Rosario', key: 'ElSantoRosario'),
      MenuItem(description: 'Letanias Lauretanas', key: 'LetaniasLauretanas'),
      MenuItem(description: 'Magnificat', key: 'Magnificat'),
      MenuItem(description: 'Salve', key: 'Salve'),
      MenuItem(description: 'El Angelus', key: 'El Angelus'),
      MenuItem(description: 'Reina del Cielo', key: 'ReinaCielo'),
      MenuItem(description: 'Bendita sea tu pureza', key: 'BenditaPureza'),
      MenuItem(
          description: 'Sub tuum praesidium. Bajo tu amparo nos acogemos',
          key: 'Amparo'),
      MenuItem(
          description: 'Simbolo de los Apostoles', key: 'SimboloApostoles'),
      MenuItem(description: 'Te Deum', key: 'TeDeum'),
      MenuItem(description: 'Himno <<Veni Creator>>', key: 'VeniCreator'),
      MenuItem(
          description: 'Secuencia del Pentecostes',
          key: 'SecuenciaPentecostes'),
      MenuItem(description: 'Padre Nuestro', key: 'PadreNuestro'),
      MenuItem(description: 'Alma de Cristo', key: 'AlmaCristo'),
      MenuItem(description: 'Lauda Sion(latino)', key: 'Lauda'),
      MenuItem(description: 'Gloria', key: 'Gloria'),
      MenuItem(description: 'El credo Niceno', key: 'CredoNiceno'),
      MenuItem(
          description: 'Adoracion Eucaristica', key: 'AdoracionEucaristica'),
      MenuItem(
          description: 'Suplica a la Reina del santo Rosario de Pompeya',
          key: 'Pompeya')
    ];

    return options;
  }

  List<MenuItem> _getMenuItemsWithSubtitles() {
    List<MenuItem> optionsWithSubtitles = [
      MenuItem(
          description: 'San Luigi Guanella',
          key: 'Guanella',
          subtitle: 'Siervos de la Caridad(Guanelianos)'),
      MenuItem(
          description: 'Oracion a San Jose',
          key: 'Jose',
          subtitle: 'Siervos de la Caridad(Guanelianos)'),
      MenuItem(
          description: 'Rosario de la Providencia',
          key: 'Providencia',
          subtitle: 'Siervos de la Caridad(Guanelianos)'),
      MenuItem(
          description:
              'Oracion por la intercesion de la Bella Sor Clara Bosatta',
          key: 'Bosatta',
          subtitle: 'Siervos de la Caridad(Guanelianos)'),
      MenuItem(
          description:
              'Oracion de la intercesion al siervo de Dios Mons. Aurelio Bancciarini',
          key: 'Bancciarini',
          subtitle: 'Siervos de la Caridad(Guanelianos)'),
      MenuItem(
          description: 'Oracion de la intercesion de San Luis Guanella',
          key: 'SanLuisGuanella',
          subtitle: 'Siervos de la Caridad(Guanelianos)'),
      MenuItem(
          description: 'Oracion por las vocaciones',
          key: 'vocaciones',
          subtitle: 'Siervos de la Caridad(Guanelianos)'),
      MenuItem(
          description: 'Oracion a Maria por el COVID19 - Papa Francisco',
          key: 'COVID19',
          subtitle: ''),
      MenuItem(
          description:
              'Oracion a Maria Salus Popolo Romani por el COVID19 - Papa Francisco',
          key: 'PopoloRomani',
          subtitle: '')
    ];

    return optionsWithSubtitles;
  }

  Widget _buildBody() {
    var result = _getMenuItems()
        .map((menuItem) => Column(
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.orange[200],
                  child: Center(
                      child: Text(menuItem.description, style: textStyle)),
                ),
                Divider(
                  thickness: 2.0,
                )
              ],
            ))
        .toList();

    var resultWithSubtitles = _getMenuItemsWithSubtitles()
        .map((menuItem) => Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                      'https://filosofia.nueva-acropolis.es/wp-content/uploads/2019/01/Padre-pio.jpg'),
                ),
                ListTile(
                  title: Center(
                      child: Text(menuItem.description, style: textStyle)),
                  subtitle: Center(child: Text(menuItem.subtitle)),
                  onTap: () {},
                ),
                Divider(
                  thickness: 2.0,
                )
              ],
            ))
        .toList();

    result.addAll(resultWithSubtitles);

    return ListView(
      padding: const EdgeInsets.all(8),
      children: result,
    );
  }
}
