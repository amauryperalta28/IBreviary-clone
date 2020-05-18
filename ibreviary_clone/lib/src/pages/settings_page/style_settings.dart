
import 'package:flutter/material.dart';

class StyleSettings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StyleSettingsState();
  }
}

class _StyleSettingsState extends State<StyleSettings> {
  String dropDownValue = 'Default';
  double textSize = 2.0;
  double brightness = 2.0;
  double readingSpeed = 5.0;
  double autoscrollSpeed = 0.0;
  bool enableTextReading = false;
  bool checkbox = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getStyleDropdown(),
          getSlider('Tamaño del texto', textSize, (value) {
            setState(() => textSize = value);
          }),
          getSlider('Brillo de fondo', brightness, (value) {
            setState(() => brightness = value);
          }),
          getCheckBox('Habilitar la lectura de textos'),
          getSlider('Velocidad de lectura', readingSpeed, (value) {
            setState(() => readingSpeed = value);
          }),
          getCheckBox('Habilitar Auto Scroll'),
          getSlider('Velocidad de Auto Scroll', autoscrollSpeed, (value) {
            setState(() => autoscrollSpeed = value);
          }),
        ],
      ),
    );
  }

  Widget getStyleDropdown() {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Estilo',
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
          Container(
            width: 150.0,
            child: DropdownButton<String>(
              isExpanded: true,
              value: dropDownValue,
              icon: Icon(
                Icons.arrow_drop_down,
              ),
              iconSize: 24,
              elevation: 16,
              onChanged: (String newValue) {
                setState(() {
                  dropDownValue = newValue;
                });
              },
              items: getDropDownOptions(),
            ),
          ),
        ],
      ),
    );
  }

  getDropDownOptions() {
    return <String>['Default', 'Old', 'Night', 'Accesible']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(
          value,
        ),
      );
    }).toList();
  }

  getSlider(String labelName, double sliderValue, Function(double) onChanged) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            labelName,
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
          Slider(
            activeColor: Colors.redAccent,
            inactiveColor: Colors.grey[200],
            value: sliderValue,
            min: 0.0,
            max: 10.0,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }

  getCheckBox(String labelName) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            labelName,
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
          Checkbox(
            activeColor: Colors.redAccent,
            value: checkbox,
            onChanged: (value) {
              setState(() => checkbox = value);
            },
          ),
        ],
      ),
    );
  }
}