import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:times/components/divider.dart';

class TimesHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DateTime date = DateTime.now();
    final DateFormat monthFormatter = DateFormat('MMM');
    final DateFormat weekDayFormatter = DateFormat('EEEE');

    return Column(
      children: [
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 40.0,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '.${monthFormatter.format(date).toLowerCase()}',
                      ),
                      TextSpan(
                          text: '${date.day}',
                          style: TextStyle(
                            color: Colors.red,
                          )),
                      TextSpan(
                        text: '${date.year}',
                      )
                    ],
                    style: TextStyle(fontSize: 36.0, fontFamily: 'Abril'),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
                child: Text(
                  '${weekDayFormatter.format(date).toUpperCase()}',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
