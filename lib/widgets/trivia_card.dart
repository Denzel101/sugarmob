import 'package:flutter/material.dart';
import 'package:sugarmob/components/bottom_card.dart';

class TriviaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        50.0,
        70.0,
        10.0,
        0.0,
      ),
      child: Container(
        height: 350.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            BottomCard(),
            SizedBox(
              width: 35.0,
            ),
            BottomCard(),
          ],
        ),
      ),
    );
  }
}
