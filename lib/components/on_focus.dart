import 'package:flutter/material.dart';
import 'package:times/components/divider.dart';

import '../utils.dart';

class TimesOnFocus extends StatelessWidget {
  final Duration _duration;

  const TimesOnFocus(this._duration);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(48.0, 28.0, 48.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 105,
            child: Text.rich(
              TextSpan(
                text: 'Hours on focus\nthis week',
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
