import 'package:flutter/material.dart';
import 'package:ibreviary_clone/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // var primaryColor = const Color(0xE6CB9E);
  static const primaryColor = Color.fromARGB(1, 230, 203, 158);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IBreviary',
      theme: ThemeData(

       iconTheme: IconThemeData(
         color: Colors.black,
         opacity: 5.0
       ),
        primaryColor: Colors.amber[100],
         
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
       home: HomePage(),
    );
  }
}



