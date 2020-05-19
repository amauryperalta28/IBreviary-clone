import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/pages/settings_page/dropdown.dart';

class DownloadTodayPrayer extends StatefulWidget {
  DownloadTodayPrayer({Key key}) : super(key: key);

  @override
  _DownloadTodayPrayerState createState() => _DownloadTodayPrayerState();
}

class _DownloadTodayPrayerState extends State<DownloadTodayPrayer> {
  final double _leftMargin = 15.0;
  String languageDropDownValue = 'Español';
  Color _redColor = Color(0xFFbe360b);
  bool checkbox = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 20.0,
              left: _leftMargin,
              bottom: 5.0,
            ),
            child: Text(
              'Seleccione un idioma',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            child: DropDownUtils.buildDropDow(
                'Español', 'Idioma de la aplicación', getLanguageOptions(),
                (value) {
              setState(() {
                languageDropDownValue = value;
              });
            }),
          ),
          Container(
            margin: EdgeInsets.only(left: _leftMargin, right: _leftMargin),
            child: FlatButton(
              color: _redColor,
              textColor: Colors.white,
              child: Text(
                'DESCARGAR EL DIA',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              onPressed: () {
                print('Descargar el dia');
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Checkbox(
                activeColor: _redColor,
                value: checkbox,
                onChanged: (value) {
                  setState(() => checkbox = value);
                },
              ),
              Text(
                'Descargar automaticamente cada nuevo dia',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Divider(
              thickness: 2.0,
            ),)
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
}
