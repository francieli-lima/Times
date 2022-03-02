import 'package:flutter/material.dart';

class TimesFlatButton extends StatelessWidget {
  final String _text;
  final VoidCallback _action;
  double width;

  TimesFlatButton(this._text, this._action, {this.width = 86.0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: MaterialButton(
        onPressed: _action,
        child: Text(
          _text.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
