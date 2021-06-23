import 'package:flutter/material.dart';
import 'package:sugarmob/widgets/countdown_timer.dart';

class CountDownScreen extends StatelessWidget {
  static const String id = 'countdown';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: CountDownTimer(),
        ),
      ),
    );
  }
}
