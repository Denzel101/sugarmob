import 'package:flutter/material.dart';
import 'package:sugarmob/widgets/challenge_widget.dart';
import 'package:video_player/video_player.dart';

class ChallengeScreen extends StatefulWidget {
  static const String id = 'challenge';

  @override
  _ChallengeScreenState createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('images/dailychallenge.mp4')
      ..initialize().then((value) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.fill,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(
                    _controller,
                  ),
                ),
              ),
            ),
            ChallengeWidget(),
          ],
        ),
      ),
    );
  }
}
