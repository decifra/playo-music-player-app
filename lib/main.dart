import 'package:flutter/material.dart';
import 'package:playo_music/routes.dart';

void main() {
  runApp(MyApp());
}

/// This widget is the root of the application.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      initialRoute: 'home_screen',
    );
  }
}
