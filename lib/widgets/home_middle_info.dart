import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sugarmob/components/rounded_button.dart';
import 'package:sugarmob/screens/challenge_screen.dart';
import 'package:sugarmob/src/constants.dart';
import 'package:video_player/video_player.dart';

class MiddleInfo extends StatelessWidget {
  MiddleInfo({required this.videoPlayerController});

  final VideoPlayerController videoPlayerController;

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
            'DAILY',
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
            onPressed: () async {
              await Navigator.pushNamed(context, ChallengeScreen.id);
              videoPlayerController.play();
            },
          ),
        ],
      ),
    );
  }
}
