import 'package:flutter/material.dart';

class _AlertProvider {
  void showAlert(BuildContext context, String text) {
    showDialog(
        context: context,
        barrierDismissible: true,
        
        builder: (context) {
          return AlertDialog(
            title: Text(text, style: TextStyle(fontSize: 18)),
            content: _buildModalContent(context),
            contentPadding: EdgeInsets.only(bottom: 0.0),
          );
        });
  }

  Widget _buildModalContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar',
                  style: TextStyle(color: Colors.red, fontSize: 18)),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child:
                  Text('OK', style: TextStyle(color: Colors.red, fontSize: 18)),
            ),
          ],
        ),
      ],
    );
  }
}

final alertProvider = _AlertProvider();
