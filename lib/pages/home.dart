import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/gridview_builder.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView'),),
      body: SafeArea(
        child: GridViewBuilderWidget(),
      ),
    );
  }
}