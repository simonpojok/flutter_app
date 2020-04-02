import 'package:flutter/material.dart';

class Fly extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.shortestSide /2;
    return Scaffold(
      body: Hero(),
    );
  }
}