import 'package:flutter/material.dart';
import 'package:times/components/divider.dart';
import 'package:times/components/dot.dart';
import 'package:times/components/dots_item.dart';
import 'package:times/components/header.dart';
import 'package:times/components/tracker_list.dart';
import 'package:times/screens/timer_entry.dart';

import 'data_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 48.0, 0.0, 24.0),
          child: TimesHeader(),
        ),
        DefaultTabController(
          length: 5,
          child: SizedBox(
            height: 37.0,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Align(
                      alignment: Alignment.bottomCenter, child: TimesDivider()),
                ),
                TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 2.0, color: Colors.black),
                    insets: EdgeInsets.symmetric(vertical: 2),
                  ),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelStyle: TextStyle(fontSize: 16.0, fontFamily: 'Abril'),
                  tabs: [
                    Container(
                      height: 30.0,
                      child: new Tab(text: 'timer'),
                    ),
                    Container(
                      height: 30.0,
                      child: new Tab(text: 'week'),
                    ),
                    Container(
                      height: 30.0,
                      child: new Tab(text: 'month'),
                    ),
                    Container(
                      height: 30.0,
                      child: new Tab(text: 'year'),
                    ),
                    Container(
                      height: 30.0,
                      child: new Tab(text: 'all'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // TimerEntryScreen(),
        DataScreen(),
      ],
    );
  }
}
