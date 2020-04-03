import 'package:flutter/material.dart';

class GridViewBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150.0),
      
    );
  }
}