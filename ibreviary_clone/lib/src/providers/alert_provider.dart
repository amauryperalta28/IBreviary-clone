import 'package:flutter/material.dart';

class _AlertProvider {
  void showAlert(BuildContext context, String text) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Text(text, style: TextStyle(fontSize: 18)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: Text('Cancelar',
                          style: TextStyle(color: Colors.red, fontSize: 18)),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('OK',
                          style: TextStyle(color: Colors.red, fontSize: 18)),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}

final alertProvider = _AlertProvider();
