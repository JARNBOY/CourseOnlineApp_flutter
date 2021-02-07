import 'package:couseonlineapp_flutter/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Course Online App',
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}
