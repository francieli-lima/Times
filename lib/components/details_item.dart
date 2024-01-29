import 'package:flutter/material.dart';
import 'package:times/components/abril_title.dart';
import 'package:times/components/dot.dart';
import 'package:times/models/track.dart';
import 'package:times/utils.dart';

import 'abril_subtitle.dart';

class TimesDetailsItem extends StatelessWidget {
  final Track _track;

  const TimesDetailsItem(this._track);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  TimesDot(Color(0xFFFF0000)),
                  TimesAbrilTitle('${printMinuteExtensive(_track.duration)}'),
                ],
              ),
            ],
          ),
          Column(
            children: [
              TimesAbrilSubtitle('${printTime(_track.date)}'),
            ],
          ),
        ],
      ),
    );
  }
}
