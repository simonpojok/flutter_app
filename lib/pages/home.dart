import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Appbar'),),
      body: SafeArea(
        child: Container(),
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}