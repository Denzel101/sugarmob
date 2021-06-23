import 'package:flutter/material.dart';
import 'package:sugarmob/widgets/home_top_info.dart';
import 'package:sugarmob/widgets/home_middle_info.dart';
import 'package:sugarmob/widgets/trivia_card.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('images/homesplash.mp4')
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
            ListView(
              children: [
                Column(
                  children: [
                    HomeTopInfo(),
                    SizedBox(
                      height: 72.0,
                    ),
                    MiddleInfo(videoPlayerController: _controller),
                    TriviaCard(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
