import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/pages/settings_page/download_today_prayers.dart';
import 'package:ibreviary_clone/src/pages/settings_page/dropdown.dart';

class DownloadPrayerSettings extends StatefulWidget {
  DownloadPrayerSettings({Key key}) : super(key: key);

  @override
  _DownloadPrayerSettingsState createState() => _DownloadPrayerSettingsState();
}

class _DownloadPrayerSettingsState extends State<DownloadPrayerSettings> {
  final double _leftMargin = 15.0;
  String languageDropDownValue = 'Español';
  Color _buttonColor = Color(0xFFbe360b);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        DownloadTodayPrayer(),
      ],
    );
  }
}
