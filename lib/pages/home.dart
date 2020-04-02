import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/left_drawer.dart';
import 'package:flutter_app/widgets/right_drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Birthdayss'),),
      body: SafeArea(
        child: Container(),
      ),
      drawer: LeftDrawerWidget(),
      endDrawer: RightDrawerWidget(),
    );
  }
}