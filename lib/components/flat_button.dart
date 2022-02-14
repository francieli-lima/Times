import 'package:flutter/material.dart';

class TimesFlatButton extends StatelessWidget {
  final String _action;

  TimesFlatButton(this._action);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 86.0,
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          _action.toUpperCase(),
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
