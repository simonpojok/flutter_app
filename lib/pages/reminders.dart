import 'package:flutter/material.dart';

class Reminders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.alarm,
          size: 120.0,
          color: Colors.orange,
        ),
      ),
    );
  }
}
