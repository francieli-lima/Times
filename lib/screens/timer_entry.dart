import 'package:flutter/material.dart';
import 'package:times/components/flat_button.dart';
import 'package:times/screens/timer_screen.dart';
import 'package:times/services/notification_service.dart';

import '../utils.dart';

class TimerEntryScreen extends StatefulWidget {
  @override
  State<TimerEntryScreen> createState() => _TimerEntryScreenState();
}

class _TimerEntryScreenState extends State<TimerEntryScreen> {
  int _index = 3;
  Duration _duration = ranges[3];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Banner(),
        _Title(),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: SizedBox(
            height: 16.0,
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  TimesFlatButton('Increase', () {
                    setState(() {
                      if (_index == 6) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content:
                                Text('sixty minutes is the max you can get.'),
                          ),
                        );
                        return;
                      }

                      _index++;
                      _duration = ranges[_index];
                      print(_duration);
                    });
                  }, width: 102.0),
                  _SubTitle('or'),
                  TimesFlatButton('Decrease', () {
                    setState(() {
                      if (_index == 0) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content:
                                Text('ten minutes is the least you can get.'),
                          ),
                        );
                        return;
                      }

                      _index--;
                      _duration = ranges[_index];
                      print(_duration);
                    });
                  }, width: 102.0),
                  _SubTitle('the duration of the session.'),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 45.0),
          child: SizedBox(
            height: 16.0,
            child: Align(
              alignment: Alignment.topLeft,
              child: _SubTitle(
                  'This session is defined in minutes, and is going to take:'),
            ),
          ),
        ),
        SizedBox(
          height: 70.0,
          child: Text(
            '${printMinutes(_duration)}',
            style: TextStyle(
              fontFamily: 'Abril',
              fontSize: 64.0,
            ),
          ),
        ),
        _ButtonStart(_duration),
      ],
    );
  }
}

class _Banner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 180,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage('assets/images/news_home.jpeg'),
          ),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(45.0, 16.0, 45.0, 16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text.rich(
          TextSpan(
            text: 'Time goes\nso fast,\nstay\n',
            style: TextStyle(fontSize: 36.0, height: 0.9),
            // default text style
            children: <TextSpan>[
              TextSpan(
                text: 'focus',
                style: TextStyle(
                  backgroundColor: Color(0xFFF88080),
                ),
              ),
              TextSpan(text: 'ed.'),
            ],
          ),
        ),
      ),
    );
  }
}

class _ButtonStart extends StatelessWidget {

  final Duration _duration;

  const _ButtonStart(this._duration);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 38.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 20.0,
              child: TimesFlatButton('Start', () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TimerScreen(_duration)));
              }),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 38.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: 104.0,
              child: Image.asset('assets/icon/arrow_go.png'),
            ),
          ),
        ),
      ],
    );
  }
}

class _SubTitle extends StatelessWidget {
  final String _text;

  const _SubTitle(this._text);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: _text,
        style: TextStyle(fontSize: 12.0, color: Color(0xFF767676)),
      ),
    );
  }
}

final List ranges = [
  Duration(minutes: 10),
  Duration(minutes: 15),
  Duration(minutes: 20),
  Duration(minutes: 25),
  Duration(minutes: 30),
  Duration(minutes: 45),
  Duration(hours: 1),
];
