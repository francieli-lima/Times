import 'package:flutter/material.dart';
import 'package:times/components/divider.dart';
import 'package:times/components/dot.dart';
import 'package:times/components/dots_item.dart';
import 'package:times/components/on_focus.dart';
import 'package:times/components/tracker_list.dart';
import 'package:times/models/data_type.dart';
import 'package:times/models/track.dart';

class DataScreen extends StatelessWidget {
  final DataType _type;
  final List<Track> _tracks;

  const DataScreen(this._type, this._tracks);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TimesOnFocus(Duration(hours: 45), _type),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
            child: TimesDivider(),
          ),
          TimesTrackerList(
            [
              TimesDotItem(
                DateTime.now(),
                Duration(hours: 8),
                [
                  TimesDot(Color(0xFFFF0000)),
                  TimesDot(Color(0xFF767676)),
                  TimesDot(Color(0xFFD1D1D1)),
                  TimesDot(Color(0xFFFF0000)),
                  TimesDot(Color(0xFF767676)),
                  TimesDot(Color(0xFFD1D1D1)),
                ],
              ),
              TimesDotItem(
                DateTime.now(),
                Duration(hours: 8),
                [
                  TimesDot(Color(0xFFFF0000)),
                  TimesDot(Color(0xFF767676)),
                  TimesDot(Color(0xFFD1D1D1)),
                  TimesDot(Color(0xFFFF0000)),
                  TimesDot(Color(0xFF767676)),
                  TimesDot(Color(0xFFD1D1D1)),
                ],
              ),
              TimesDotItem(
                DateTime.now(),
                Duration(hours: 8),
                [
                  TimesDot(Color(0xFFFF0000)),
                  TimesDot(Color(0xFF767676)),
                  TimesDot(Color(0xFFD1D1D1)),
                  TimesDot(Color(0xFFFF0000)),
                  TimesDot(Color(0xFF767676)),
                  TimesDot(Color(0xFFD1D1D1)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
