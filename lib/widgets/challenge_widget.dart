import 'package:flutter/material.dart';
import 'package:sugarmob/components/rounded_button.dart';
import 'package:sugarmob/screens/countdown_screen.dart';
import 'package:sugarmob/src/constants.dart';

class ChallengeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 33.0,
            top: 24.0,
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 38.0,
            ),
          ),
        ),
        SizedBox(
          height: 200.0,
        ),
        Padding(
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
              Text(
                'Answer Trivia Questions to win rewards',
                textAlign: TextAlign.center,
                style: kLabelTextStyle3.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                decoration: kRoundedButtonStyle.copyWith(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: <Color>[
                      Color(0xFFFBAC33),
                      Color(0xFFF0531B),
                    ],
                  ),
                ),
                color: Colors.transparent,
                onPressed: () {
                  Navigator.pushNamed(context, CountDownScreen.id);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
