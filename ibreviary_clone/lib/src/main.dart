import 'package:flutter/material.dart';
import 'package:ibreviary_clone/src/pages/breviary_page.dart';
import 'package:ibreviary_clone/src/pages/holy_places_help_page.dart';
import 'package:ibreviary_clone/src/pages/home_page.dart';
import 'package:ibreviary_clone/src/pages/misal_page.dart';
import 'package:ibreviary_clone/src/pages/notifications_page.dart';
import 'package:ibreviary_clone/src/pages/prayers_page.dart';
import 'package:ibreviary_clone/src/pages/rituals_page.dart';
import 'package:ibreviary_clone/src/pages/settings_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        primaryColor: Color(0xFFe6cb9e),
         
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
       initialRoute: HomePage.routeName,
       routes: <String, WidgetBuilder>{
          HomePage.routeName: (BuildContext context) => HomePage(),
          BreviaryPage.routeName:(BuildContext context) => BreviaryPage(),
          MisalPage.routeName:(BuildContext context) => MisalPage(),
          RitualsPage.routeName:(BuildContext context) => RitualsPage(),
          PrayersPage.routeName :(BuildContext context) => PrayersPage(),
          SettingsPage.routeName :(BuildContext context) => SettingsPage(),
          NotificationsPage.routeName :(BuildContext context) => NotificationsPage(),
          HolyPlacesHelpPage.routeName:  (BuildContext context) => HolyPlacesHelpPage()
       }  ,
    );
  }
}



