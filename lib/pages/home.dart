import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Project'),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                const OrientationLayoutIconsWidget(),
                Divider(),
                const OrientationLayoutWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrientationLayoutWidget extends StatelessWidget{
  const OrientationLayoutWidget({ Key key, }): super(key: key);
  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;
    return _orientation == Orientation.portrait? Row() : Row();
  }
}

class OrientationLayoutIconsWidget extends StatelessWidget {
  const OrientationLayoutIconsWidget({ Key key, }): super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;
    return _orientation == Orientation.portrait ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.school,
          size: 48.0,
        )
      ],
    ): Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.school,
          size: 48.0,
        ),
        Icon(
          Icons.brush,
          size: 48.0,
        )
      ],
    );
  }
}