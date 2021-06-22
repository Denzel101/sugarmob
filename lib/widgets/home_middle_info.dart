import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sugarmob/components/rounded_button.dart';
import 'package:sugarmob/screens/challenge_screen.dart';
import 'package:sugarmob/src/constants.dart';

class MiddleInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'DAILY CHALLENGE',
            textAlign: TextAlign.center,
            style: kLabelTextStyle.copyWith(
              fontSize: 60.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          RoundedButton(
            decoration: kRoundedButtonStyle,
            color: Colors.transparent,
            onPressed: () {
              Navigator.pushNamed(context, ChallengeScreen.id);
            },
          ),
        ],
      ),
    );
  }
}
