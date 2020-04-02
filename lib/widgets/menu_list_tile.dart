import 'package:flutter/material.dart';
import 'package:flutter_app/pages/birthdays.dart';
import 'package:flutter_app/pages/gratitude.dart';
import 'package:flutter_app/pages/reminders.dart';

class MenuListTileWidget extends StatefulWidget {
  @override
  _MenuListTileWidgetState createState() => _MenuListTileWidgetState();
}

class _MenuListTileWidgetState extends State<MenuListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.cake),
          title: Text('Birthdays'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Birthdays())
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.sentiment_satisfied),
          title: Text('Gratitude'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => Gratitude()))
          },
        ),
        ListTile(),
        Divider(color: Colors.grey),
        ListTile(),
      ],
    );
  }
}