import 'package:flutter/material.dart';

class _AlertProvider {
  void showAlert(BuildContext context, String text) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text(text),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(text),
              ],
            ),
          );
        });
  }
}

final alertProvider = _AlertProvider();
