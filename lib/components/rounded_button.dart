import 'package:flutter/material.dart';
import 'package:sugarmob/src/constants.dart';

class RoundedButton extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;
  final Decoration decoration;

  RoundedButton({
    required this.color,
    required this.onPressed,
    required this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            'Start',
            style: kLabelTextStyle2,
          ),
        ),
      ),
    );
  }
}
