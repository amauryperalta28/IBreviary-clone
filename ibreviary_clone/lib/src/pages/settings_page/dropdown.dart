import 'package:flutter/material.dart';

class DropDownUtils {
  static Widget buildDropDown(String value, String label, List<DropdownMenuItem> items,
      Function(String) onChangedEvent) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
          Container(
            width: 150.0,
            child: DropdownButton<String>(
              isExpanded: true,
              value: value,
              icon: Icon(
                Icons.arrow_drop_down,
              ),
              iconSize: 24,
              elevation: 16,
              onChanged: onChangedEvent,
              items: items,
            ),
          ),
        ],
      ),
    );
  }
}
