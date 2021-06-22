import 'package:flutter/material.dart';
import 'package:sugarmob/src/constants.dart';

class TopRightButton extends StatelessWidget {
  final String text;
  final String image;

  TopRightButton({required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(
          30.0,
        ),
        bottomLeft: Radius.circular(
          30.0,
        ),
      ),
      elevation: 5.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          children: [
            Image.asset(
              image,
            ),
            Text(
              text,
              style: kLabelTextStyle3,
            ),
          ],
        ),
      ),
    );
  }
}
