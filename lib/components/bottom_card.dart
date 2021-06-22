import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      width: 316.0,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 30.0,
        ),
        child: Image.asset(
          'images/card.png',
        ),
      ),
    );
  }
}
