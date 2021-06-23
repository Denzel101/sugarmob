import 'package:flutter/material.dart';
import 'package:sugarmob/src/constants.dart';

class CountDownTimer extends StatefulWidget {
  @override
  _CountDownTimerState createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 33.0,
        top: 24.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 38.0,
            ),
          ),
          SizedBox(
            height: 300.0,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Starting in',
                    style: kLabelTextStyle3.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '00:00:07',
                    style: kLabelTextStyle.copyWith(
                      fontSize: 70.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
