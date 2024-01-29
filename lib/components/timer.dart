import 'dart:async';

import 'package:flutter/material.dart';
import 'package:times/services/notification_service.dart';
import '../utils.dart';
import 'flat_button.dart';

class TimesTimer extends StatefulWidget {
  Duration _duration;

  TimesTimer(this._duration);

  @override
  State<TimesTimer> createState() => _TimesTimerState();
}

class _TimesTimerState extends State<TimesTimer> {
  Timer? _timer = null;
  String _timerControl = 'Start';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(52.0, 0.0, 52.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 104.0,
            child: Text(
              '${printMinutes(widget._duration)}',
              style: TextStyle(
                fontFamily: 'Abril',
                fontSize: 86.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 32.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 14.0,
                  child: Text(
                    'minutes',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF767676),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TimesFlatButton(
                  _timerControl,
                  () {
                    if(_timer != null) {
                      this.setState(() {
                        _timerControl = 'Start';
                      });
                      _timer?.cancel() ;
                      _timer = null;
                    } else {
                      _startTimer();
                    }
                  },
                ),
                TimesFlatButton(
                  'Cancel',
                  () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    this.setState(() {
      _timerControl = 'Pause';
    });

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (widget._duration.inSeconds == 0) {
        this.setState(() {
          _timerControl = 'Start';
          timer.cancel();
        });
      } else {
        this.setState(() {
          // NotificationService().showNotification('Keep up! You\'re doing good!', '${printDuration(widget._duration)}');
          widget._duration = Duration(seconds: widget._duration.inSeconds - 1);
        });
      }
    });
  }
}
