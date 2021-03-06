import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sugarmob/src/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MyApp()));
}
