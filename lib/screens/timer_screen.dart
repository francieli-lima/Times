import 'package:flutter/material.dart';
import 'package:times/components/arrow_back.dart';
import 'package:times/components/divider.dart';
import 'package:times/components/header.dart';
import 'package:times/components/timer.dart';
import 'package:times/components/title_underlined.dart';

class TimerScreen extends StatelessWidget {
  final Duration _duration;

  TimerScreen(this._duration);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TimesBackArrow(),
            TimesHeader(),
            TimesDivider(),
            _OngoingTitle(),
            TimesTimer(_duration),
            TimesDivider(),
            _Footer(),
          ],
        ),
      ),
    );
  }
}

class _OngoingTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 16.0, 0.0, 0.0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
                child: SizedBox(
                  width: 100,
                  height: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFFF88080),
                    ),
                  ),
                ),
              ),
              Text(
                'Ongoing',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28.0, 16.0, 28.0, 28.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
            child: TimesUnderlinedTitle('you may also like'),
          ),
          _RestImage(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 16.0, 28.0, 0.0),
            child: Text.rich(
              TextSpan(
                text:
                    'Next session may be a break for you to enjoy some time for ',
                style: TextStyle(fontSize: 18.0),
                // default text style
                children: <TextSpan>[
                  TextSpan(
                    text: 'yourself',
                    style: TextStyle(
                      backgroundColor: Color(0xFFCECBCB),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text.rich(
              TextSpan(
                text: 'Sometimes a break is all we need.',
                style: TextStyle(fontSize: 12.0, color: Color(0xFF767676)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _RestImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage('assets/images/cup_coffee.png'),
        ),
      ),
    );
  }
}
