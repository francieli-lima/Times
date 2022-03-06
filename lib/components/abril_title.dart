import 'package:flutter/material.dart';

class TimesAbrilTitle extends StatelessWidget {
  final String _message;
  double size;

  TimesAbrilTitle(this._message, {this.size = 16.0});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: _message,
        style: TextStyle(
          fontSize: size,
          fontFamily: 'Abril',
        ),
      ),
    );
  }
}
