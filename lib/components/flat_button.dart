import 'package:flutter/material.dart';

class TimesFlatButton extends StatelessWidget {
  final String _text;
  final VoidCallback _action;

  TimesFlatButton(this._text, this._action);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 86.0,
      child: MaterialButton(
        onPressed: _action,
        child: Text(
          _text.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto',
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
