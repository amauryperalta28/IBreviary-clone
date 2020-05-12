import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/pages/breviary_page.dart';
import 'package:ibreviary_clone/src/pages/home_page.dart';


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
      debugShowCheckedModeBanner: false,
      title: 'IBreviary',
      theme: ThemeData(

       iconTheme: IconThemeData(
         color: Colors.black,
         opacity: 5.0
       ),
        primaryColor: Colors.amber[50],
         
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
       initialRoute: 'home',
       routes: <String, WidgetBuilder>{
          'home': (BuildContext context) => HomePage(),
          'breviary':(BuildContext context) => BreviaryPage(),
       }  ,
    );
  }
}



