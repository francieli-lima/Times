import 'package:flutter/material.dart';

class TimesDot extends StatelessWidget {
  final Color _color;

  const TimesDot(this._color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 16.0, 8.0, 16.0),
      child: DecoratedBox(
        child: SizedBox(
          height: 20.0,
          width: 20.0,
        ),
        decoration: BoxDecoration(
          color: _color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
