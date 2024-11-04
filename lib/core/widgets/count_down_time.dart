import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ios_samx/core/constant/app_style.dart';

typedef SecondCallback = void Function(
  int second,
);

// ignore: must_be_immutable
class CountdownTimerWidget extends StatefulWidget {
  final int second;
  SecondCallback secondCallback;

  CountdownTimerWidget(
      {super.key, required this.second, required this.secondCallback});

  @override
  _CountdownTimerWidgetState createState() => _CountdownTimerWidgetState();
}

class _CountdownTimerWidgetState extends State<CountdownTimerWidget> {
  late Timer _timer;
  int _currentMinutes = 0;
  int _currentSeconds = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    int duration = widget.second; // Convert minutes to seconds
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (duration > 0) {
          duration--;
          _currentMinutes = duration ~/ 60;
          _currentSeconds = duration % 60;
          widget.secondCallback(duration);
        } else {
          _timer.cancel(); // Cancel the timer when it reaches zero
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? Text(
            '${"main.get_code_again".tr()}${_currentSeconds.toString().padLeft(2, '0')}:$_currentMinutes',
            style: AppStyle.size14Weight400.copyWith(
              fontFamily: "IRANSans",
              color: const Color(0xff5C6970),
            ),
          )
        : Text(
            '${"main.get_code_again".tr()}$_currentMinutes:${_currentSeconds.toString().padLeft(2, '0')}',
            style: AppStyle.size14Weight400.copyWith(
              fontFamily: "IRANSans",
              color: const Color(0xff5C6970),
            ),
          );
  }
}
