import 'package:flutter/material.dart';
import 'package:times/components/divider.dart';
import 'package:times/components/dot.dart';
import 'package:times/components/dots_item.dart';
import 'package:times/components/header.dart';
import 'package:times/components/tracker_list.dart';
import 'package:times/models/data_type.dart';
import 'package:times/models/track.dart';
import 'package:times/screens/timer_entry.dart';

import 'all_screen.dart';
import 'data_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 48.0, 0.0, 24.0),
          child: TimesHeader(),
        ),
        SizedBox(
          height: 37.0,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Align(
                    alignment: Alignment.bottomCenter, child: TimesDivider()),
              ),
              TabBar(
                controller: _tabController,
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
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              TimerEntryScreen(),
              DataScreen(DataType.Week, []),
              DataScreen(DataType.Month, []),
              DataScreen(DataType.Year, []),
              AllScreen(),
            ],
          ),
        ),
      ],
    );
  }
}
