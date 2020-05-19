import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/utils/date_utils.dart';

class DownloadedPrayers extends StatelessWidget {
  final Color _redColor = Color(0xFFbe360b);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 16.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Days of prayer available',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              FlatButton(
                color: _redColor,
                textColor: Colors.white,
                child: Text('ELIMINAR TODOS'),
                onPressed: () {
                  print('ELIMINAR TODOS');
                },
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            child: buildAvailablePrayers(),
          ),
        ],
      ),
    );
  }

  Row buildAvailablePrayers() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text('${dateUtils.getCurrentDayName()} 29 de noviembre 2020'),
            Text('${dateUtils.getCurrentDayName()}, VI semana de pascua'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                right: 10.0,
              ),
              child: Text(
                'ES',
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.import_contacts,
                size: 40.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                right: 10.0,
              ),
              child: Icon(
                Icons.delete,
                size: 40.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
