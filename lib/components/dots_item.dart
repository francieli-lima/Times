import 'package:flutter/material.dart';
import 'package:times/components/divider.dart';
import 'package:times/components/dot.dart';

class TimesDotItem extends StatelessWidget {
  final DateTime _date;
  final Duration _duration;
  final List<TimesDot> _dots;

  const TimesDotItem(this._date, this._duration, this._dots);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
          child: TimesDivider(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _AbrilTitle('quinta'),
            Text('fev 12'),
          ],
        ),
        Row(
          children: _dots,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _AbrilSubtitle('8 horas'),
            _AbrilTitle('60 min'),
          ],
        ),
      ],
    );
  }
}

class _AbrilTitle extends StatelessWidget {
  final String _message;

  const _AbrilTitle(this._message);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: _message,
        style: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Abril',
        ),
      ),
    );
  }
}

class _AbrilSubtitle extends StatelessWidget {
  final String _message;

  const _AbrilSubtitle(this._message);

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
