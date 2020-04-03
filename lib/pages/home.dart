import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView'),),
      body: SafeArea(
        child: const GridViewBuildWidget(),
      ),
    );
  }
}