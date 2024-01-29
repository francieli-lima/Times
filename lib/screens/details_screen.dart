import 'package:flutter/material.dart';
import 'package:times/components/abril_subtitle.dart';
import 'package:times/components/abril_title.dart';
import 'package:times/components/details_item.dart';
import 'package:times/models/track.dart';
import 'package:times/utils.dart';

class DetailsScreen extends StatelessWidget {
  final Duration _duration;
  final DateTime _dateTime;

  const DetailsScreen(this._duration, this._dateTime);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TimesAbrilTitle('${formatDate(_dateTime).toLowerCase()}'),
              TimesAbrilTitle('${printDayOfWeek(_dateTime).toLowerCase()}'),
            ],
          ),
          ListView(
            padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
            shrinkWrap: true,
            children: [
              TimesDetailsItem(
                  Track(id: 0, date: _dateTime, duration: _duration)),
              TimesDetailsItem(
                  Track(id: 0, date: _dateTime, duration: _duration)),
              TimesDetailsItem(
                  Track(id: 0, date: _dateTime, duration: _duration)),
              TimesDetailsItem(
                  Track(id: 0, date: _dateTime, duration: _duration)),
              TimesDetailsItem(
                  Track(id: 0, date: _dateTime, duration: _duration)),
              TimesDetailsItem(
                  Track(id: 0, date: _dateTime, duration: _duration)),
            ],
            scrollDirection: Axis.vertical,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TimesAbrilSubtitle('${printHoursExtensive(_duration)}'),
              TimesAbrilTitle('${printMinutes(_duration)}', size: 25.0),
            ],
          ),
        ],
      ),
    );
  }
}
