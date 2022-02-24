import 'package:flutter/material.dart';
import 'package:times/screens/timer_screen.dart';
import 'components/header.dart';

void main() {
  runApp(const TimesApp());
}

class TimesApp extends StatelessWidget {
  const TimesApp({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: TimerScreen(),
      ),
    );
  }
}
