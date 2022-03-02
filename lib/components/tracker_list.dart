import 'package:flutter/material.dart';
import 'package:times/components/dot.dart';
import 'package:times/components/dots_item.dart';

class TimesTrackerList extends StatelessWidget {
  final List<TimesDotItem> _components;

  const TimesTrackerList(this._components);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
          child: ListView(
            shrinkWrap: true,
            children: _components,
            scrollDirection: Axis.vertical,
          ),
        ),
      ],
    );
  }
}
