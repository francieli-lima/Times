import 'package:flutter/material.dart';
import 'flat_button.dart';

class TimesTimer extends StatelessWidget {
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
              '25:00',
              style: TextStyle(
                fontFamily: 'Abril',
                fontSize: 96.0,
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
            padding: const EdgeInsets.fromLTRB(0.0, 32.0, 0.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TimesFlatButton('Pause'),
                TimesFlatButton('Cancel'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
