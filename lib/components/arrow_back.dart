import 'package:flutter/material.dart';

class TimesBackArrow extends StatelessWidget {
  const TimesBackArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          height: 20.0,
          width: 104.0,
          child: MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/icon/arrow_back.png'),
          ),
        ),
      ),
    );
  }
}
