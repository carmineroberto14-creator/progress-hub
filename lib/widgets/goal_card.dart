import 'package:flutter/material.dart';

class GoalCard extends StatelessWidget {
  final String goal;
  final String progress;
  final Function onEdit;

  GoalCard({required this.goal, required this.progress, required this.onEdit});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              goal,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              progress,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => onEdit(),
              child: Text('Edit Goal'),
            ),
          ],
        ),
      ),
    );
  }
}