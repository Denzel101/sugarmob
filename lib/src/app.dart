import 'package:flutter/material.dart';
import 'package:sugarmob/screens/challenge_screen.dart';
import 'package:sugarmob/screens/home_screen.dart';
import 'package:sugarmob/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sugar Mob',
      theme: ThemeData(
        primaryColor: Color(0XFFFE5432),
        scaffoldBackgroundColor: Color(0XFFFE5432),
      ),
      initialRoute: HomeScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        ChallengeScreen.id: (context) => ChallengeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
