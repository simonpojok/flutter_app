import 'package:flutter/material.dart';

class Gratitude extends StatefulWidget {
  final int radioGroupValue;
  Gratitude({ Key key, @required this.radioGroupValue }): super(key: key);
  @override
  _GratitudeState createState() => _GratitudeState();
}

class _GratitudeState extends State<Gratitude> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gratitude'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () => Navigator.pop(context, _selectedGratitude),
          ),
        ],
      ),
      body: SafeArea(),
    );
  }
}