import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/sliver_app_bar.dart';
import 'package:flutter_app/widgets/sliver_grid.dart';
import 'package:flutter_app/widgets/sliver_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomScrollView - Slivers'),
        elevation: 0.0,
      ),
      body: CustomScrollView(
        slivers: <Widget>[

        ],
      ),
    );
  }
}