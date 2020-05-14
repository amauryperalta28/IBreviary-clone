import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/models/menu_item.dart';
import 'package:ibreviary_clone/src/pages/holy_places_help_page.dart';

import 'ibreviary_app_bar.dart';

class NotificationsPage extends StatelessWidget {
  final textStyle = TextStyle(fontSize: 20.0);
  static const routeName = '/notifications';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IBreviaryAppBar(
        title: Text('IBreviary'),
        context: context,
      ),
      body: _buildBody(context),
      backgroundColor: Color(0xFFd8b374),
    );
  }

  void _getFunctions(String key, BuildContext context) {
    var functions = {'AyudaLugaresSantos': () {}};

    functions[key]();
  }

  Widget _buildBody(BuildContext context) {
    List<MenuItem> options = [
      MenuItem(
          description: 'Ayuda los Lugares Santos', key: 'AyudaLugaresSantos'),
    ];

    var result = options
        .map((menuItem) => Column(
              children: <Widget>[
                Container(
                    height: 50,
                    color: Color(0xFFd8b374),
                    child: ListTile(
                      title: Text(menuItem.description, style: textStyle),
                      onTap: () {
                        Navigator.pushNamed(
                            context, HolyPlacesHelpPage.routeName);
                      },
                    )),
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
