import 'package:flutter/material.dart';
import 'package:times/components/abril_title.dart';
import 'package:times/components/divider.dart';
import 'package:times/components/dot.dart';

import 'abril_subtitle.dart';

class TimesDotItem extends StatelessWidget {
  final DateTime _date;
  final Duration _duration;
  final List<TimesDot> _dots;

  const TimesDotItem(this._date, this._duration, this._dots);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TimesAbrilTitle('quinta'),
              Text('fev 12'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 16.0, 8.0, 16.0),
            child: Row(
              children: _dots,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TimesAbrilSubtitle('8 horas'),
              TimesAbrilTitle('60 min'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
            child: TimesDivider(),
          ),
        ],
      ),
    );
  }
}
