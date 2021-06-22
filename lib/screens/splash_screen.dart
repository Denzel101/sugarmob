import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sugarmob/screens/home_screen.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('images/splashvideo.mp4')
      ..initialize().then((value) async {
        await _controller.play();
        Timer(Duration(seconds: 52), () {
          setState(() {
            Navigator.pushNamed(context, HomeScreen.id);
          });
        });
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
          ],
        ),
      ),
    );
  }
}
