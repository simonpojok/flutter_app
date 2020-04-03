import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List')),
      body: SafeArea(
        child: ListView.builder(itemBuilder: null),
      ),
    );
  }
}