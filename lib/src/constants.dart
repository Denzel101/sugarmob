import 'package:flutter/material.dart';

const kLabelTextStyle = TextStyle(
  fontFamily: 'LuckiestGuy',
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 30.0,
  shadows: <Shadow>[
    Shadow(
      blurRadius: 4.0,
      color: Color(0xFF40000000),
      offset: Offset(0.0, 4.0),
    ),
  ],
);

const kLabelTextStyle2 = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w300,
  fontSize: 20.0,
);

const kLabelTextStyle3 = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
  color: Color(0xFF8E5908),
);

const kRoundedButtonStyle = BoxDecoration(
  borderRadius: BorderRadius.all(
    Radius.circular(
      30.0,
    ),
  ),
  gradient: LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: <Color>[
      Color(0xFFFF2F69),
      Color(0xFF9752FF),
    ],
  ),
);
