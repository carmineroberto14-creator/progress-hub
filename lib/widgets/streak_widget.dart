import 'package:flutter/material.dart';

class StreakWidget extends StatelessWidget {
  final int streakCount;

  StreakWidget({required this.streakCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.star, color: Colors.amber),
          SizedBox(width: 8.0),
          Text(
            'Current Streak: \\$streakCount days',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}