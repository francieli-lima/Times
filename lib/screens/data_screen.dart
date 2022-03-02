import 'package:flutter/material.dart';
import 'package:times/components/divider.dart';
import 'package:times/components/dot.dart';
import 'package:times/components/dots_item.dart';
import 'package:times/components/on_focus.dart';
import 'package:times/components/tracker_list.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimesOnFocus(Duration(hours: 45)),
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
    );
  }
}
