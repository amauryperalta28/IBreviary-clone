import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/pages/settings_page/download_prayers_settings.dart';
import 'package:ibreviary_clone/src/pages/settings_page/style_settings.dart';
import 'package:ibreviary_clone/src/pages/settings_page/text_style_settings.dart';

class SettingsPage extends StatelessWidget {
  final _textTheme = TextTheme(
      headline6: TextStyle(
          color: Color(0xFFb0380a),
          fontSize: 20.0,
          fontWeight: FontWeight.w500));

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          textTheme: _textTheme,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Estilo'),
              Tab(text: 'Textos'),
              Tab(text: 'Descargar'),
            ],
          ),
          title: Text('Ajustes'),
          backgroundColor: Color(0xFFe6cb9e),
        ),
        body: TabBarView(
          children: [
            StyleSettings(),
            TextStyleSettings(),
            DownloadPrayerSettings(),
          ],
        ),
      ),
    );
  }
}


