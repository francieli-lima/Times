import 'dart:async';
import 'package:flutter/material.dart';
import 'package:times/components/divider.dart';
import 'package:times/components/timer.dart';

class TimerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        _Title(),
        TimesTimer(),
        TimesDivider(),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 24.0, 0.0, 0.0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
                child: SizedBox(
                  width: 100,
                  height: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFFF88080),
                    ),
                  ),
                ),
              ),
              Text(
                'Ongoing',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
