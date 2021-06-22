import 'package:flutter/material.dart';
import 'package:sugarmob/components/top_right_button.dart';
import 'package:sugarmob/src/constants.dart';

class HomeTopInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        33.0,
        24.0,
        0.0,
        20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Colors.white,
            size: 38.0,
          ),
          Image.asset(
            'images/sugar.png',
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TopRightButton(
                image: 'images/nairacoin.png',
                text: '20k',
              ),
              SizedBox(
                height: 10.0,
              ),
              TopRightButton(
                image: 'images/coin.png',
                text: '200',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
