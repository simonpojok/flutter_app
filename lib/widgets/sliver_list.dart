import 'package:flutter/material.dart';

class SliverListWidget extends StatelessWidget {
  const SliverListWidget({ Key key }): super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(),
    );
  }
}