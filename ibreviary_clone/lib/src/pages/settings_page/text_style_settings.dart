import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/pages/settings_page/dropdown.dart';

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
          DropDownUtils.buildDropDown(languageDropDownValue,'Idioma de la aplicación', getLanguageOptions(),
              (value) {
            setState(() {
              languageDropDownValue = value;
            });
          }),
          DropDownUtils.buildDropDown(properLiturgyDropDownValue,'Propio liturgico', getProperLiturgyOptions(),
              (value) {
            setState(() {
              properLiturgyDropDownValue = value;
            });
          }),
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
