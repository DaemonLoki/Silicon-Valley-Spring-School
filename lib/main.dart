import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.limeAccent.shade200,
          textTheme: TextTheme(
            headline: TextStyle(
                fontSize: 72.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.white),
          )),
      home: WelcomePage(),
    );
  }
}
