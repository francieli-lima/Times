import 'package:flutter/material.dart';

class TimesAbrilSubtitle extends StatelessWidget {
  final String _message;

  const TimesAbrilSubtitle(this._message);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: _message,
        style: TextStyle(
          fontSize: 16.0,
          color: Color(0xFF767676),
        ),
      ),
    );
  }
}