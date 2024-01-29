import 'package:flutter/material.dart';
import 'package:times/models/data_type.dart';

import '../utils.dart';

class TimesOnFocus extends StatelessWidget {
  final Duration _duration;
  final DataType _type;

  const TimesOnFocus(this._duration, this._type);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(48.0, 28.0, 48.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 115,
            child: Text.rich(
              TextSpan(
                text: 'Hours on focus\nthis ${_type.displayTitle}',
                style: TextStyle(
                  fontSize: 48.0,
                ),
              ),
            ),
          ),
          Text(
            '${printHours(_duration)}',
            style: TextStyle(
              fontFamily: 'Abril',
              fontSize: 102.0,
            ),
          ),
          Text.rich(
            TextSpan(
              text: 'Equivalent of ${printDays(_duration)} business days.',
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xFF767676),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
