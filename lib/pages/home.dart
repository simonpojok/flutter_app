import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/stack.dart';
import 'package:flutter_app/widgets/stack_favorite.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack Widget'),),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            if (index.isEven) {
              return StackWidget();
            } else {
              return StackFavoriteWidget();
            }
          },
        ),
      ),
    );
  }
}