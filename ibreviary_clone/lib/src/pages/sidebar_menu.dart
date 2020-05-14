import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/pages/prayers_page.dart';
import 'package:ibreviary_clone/src/pages/rituals_page.dart';
import 'package:ibreviary_clone/src/utils/date_utils.dart';

import 'breviary_page.dart';
import 'misal_page.dart';

class SideBarMenu extends StatelessWidget {
  final _menufontStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800);

  @override
  Widget build(BuildContext context) {
    var _menuColor = Color(0xFFd8b374);
    var _fontColor = Color(0xFF362613);
    
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: _menuColor,
            child: Column(
              children: <Widget>[
                DrawerHeader(
                  child: Center(
                      child: Text(
                    '${dateUtils.getCurrentDayName()} V semana de Pascua',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: _fontColor),
                  )),
                  decoration: BoxDecoration(color: Color(0xFFe6cb9e)),
                ),
                ListTile(
                  title: Text('Breviario', style: _menufontStyle),
                  onTap: () {
                    Navigator.pushNamed(context, BreviaryPage.routeName);
                  },
                ),
                ListTile(
                  title: Text('Misal', style: _menufontStyle),
                  onTap: () {
                    Navigator.pushNamed(context, MisalPage.routeName);
                  },
                ),
                ListTile(
                  title: Text('Lecturas', style: _menufontStyle),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Oraciones', style: _menufontStyle),
                  onTap: () {
                    Navigator.pushNamed(context, PrayersPage.routeName);
                  },
                ),
                ListTile(
                  title: Text('Rituales', style: _menufontStyle),
                  onTap: () {
                    Navigator.pushNamed(context, RitualsPage.routeName);
                  },
                ),
              ],
            ),
          ),
          Container(height: 300, color: _menuColor)
        ],
      ),
    );
  }
}
