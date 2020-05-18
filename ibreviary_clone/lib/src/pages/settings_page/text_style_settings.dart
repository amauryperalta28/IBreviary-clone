import 'package:flutter/material.dart';

class TextStyleSettings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextStyleState();
  }
}

class _TextStyleState extends State<TextStyleSettings> {
  String languageDropDownValue = 'Español';
  String properLiturgyDropDownValue = 'Mercedarios';

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getStyleDropdown(languageDropDownValue,'Idioma de la aplicación', getLanguageOptions(),
              (value) {
            setState(() {
              languageDropDownValue = value;
            });
          }),
          getStyleDropdown(properLiturgyDropDownValue,'Propio liturgico', getProperLiturgyOptions(),
              (value) {
            setState(() {
              properLiturgyDropDownValue = value;
            });
          }),
        ],
      ),
    );
  }

  Widget getStyleDropdown(String value, String label, List<DropdownMenuItem> items, Function(String) onChangedEvent) {
        return Container(
          margin: EdgeInsets.only(left: 20.0, right: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                label,
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
              Container(
                width: 150.0,
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: value,
                  icon: Icon(
                    Icons.arrow_drop_down,
                  ),
                  iconSize: 24,
                  elevation: 16,
                  onChanged: onChangedEvent,
                  items: items,
                ),
              ),
            ],
          ),
        );
  }

  List<DropdownMenuItem> getLanguageOptions() {
    return <String>[
      'Italiano',
      'Español',
      'Francais',
      'Romana',
      'Portugues',
      'Turco',
      'Rito Ambrosiano',
      'Rito Monastico',
      'Rito Monastico',
      'Vetus Ordo',
    ].map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(
          value,
        ),
      );
    }).toList();
  }

  List<DropdownMenuItem> getProperLiturgyOptions() {
    return <String>[
      'Ningun Texto Propio seleccionado',
      'Tierra Santa',
      'Salesianos',
      'Pasionistas',
      'Franciscanos',
      'Misioneros de la preciosa sangre',
      'Agostinianos',
      'Mercedarios',
      'La salle',
      'Siervos de la Caridad(Guanelianos)',]
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(
          value,
        ),
      );
    }).toList();
  }
}
