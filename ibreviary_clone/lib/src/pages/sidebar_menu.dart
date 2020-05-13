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
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: Colors.orange[200],
            child: Column(
              children: <Widget>[
                DrawerHeader(
                  child: Center(
                      child: Text(
                    '${dateUtils.getCurrentDayName()} V semana de Pascua',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  )),
                  decoration: BoxDecoration(color: Colors.amber[50]),
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
          Container(height: 300, color: Colors.orange[200])
        ],
      ),
    );
  }
}
