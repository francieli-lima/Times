import 'package:flutter/material.dart';

class TimesUnderlinedTitle extends StatelessWidget {
  final String _title;

  TimesUnderlinedTitle(this._title);

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: TextStyle(
        fontFamily: 'Abril',
        fontSize: 18.0,
        decoration: TextDecoration.underline,
        decorationColor: Colors.black,
        decorationThickness: 2,
        color: Colors.transparent,
        shadows: [Shadow(color: Colors.black, offset: Offset(0, -3))],
      ),
    );
  }
}
