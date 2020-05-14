import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ibreviary_app_bar.dart';

class HolyPlacesHelpPage extends StatelessWidget {
  static const routeName = '/holyPlacesHelp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IBreviaryAppBar(
        title: Text('IBreviary'),
        context: context,
      ),
      body: _buildBody(context),
      backgroundColor: Color(0xFFe6cb9e),
    );
  }

  Widget _buildBody(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
                color: Color(0xFFd9c097),
                autofocus: false,
                textColor: Colors.white,
                clipBehavior: Clip.antiAlias,
                child: Text('Cerrar',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
                onPressed: () {
                  Navigator.of(context).pop();
                })
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Text('AYUDA LOS LUGARES SANTOS',
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700)),
          ],
        ),
        ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: size.height, maxWidth: size.width),
          child: const Card(
              color: Color(0xFFe6cb9e),
              child: Text(
                  'Ayuda los lugares de la Pasion muerte y Resurreccion de Jesus en Tierra Santa',
                  style: TextStyle(fontSize: 20.0))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              child: Text('DONA AHORA'),
              onPressed: (){
               var _launched = _launchInBrowser('https://campaign.proterrasancta.org/ibreviary-es-2019/');
              },
            )
          ],
        )
      ],
    );
  }

    Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
