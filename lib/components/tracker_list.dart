import 'package:flutter/material.dart';
import 'package:times/components/dots_item.dart';
import 'package:times/screens/details_screen.dart';

class TimesTrackerList extends StatelessWidget {
  final List<TimesDotItem> _components;

  const TimesTrackerList(this._components);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: _components[index],
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return Wrap(
                  children: [DetailsScreen(Duration(hours: 8), DateTime.now())],
                );
              },
            );
          },
        );
      },
      itemCount: _components.length,
    );
  }
}
