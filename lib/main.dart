import 'package:flutter/material.dart';
import 'package:times/screens/timer_screen.dart';
import 'components/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Times',
      theme: ThemeData(
        fontFamily: 'Blinker',
        primaryColor: Colors.black,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Times(),
    );
  }
}

class Times extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [TimesHeader(), TimerScreen()],
      ),
    );
  }
}
