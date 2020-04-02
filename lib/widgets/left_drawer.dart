import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/menu_list_tile.dart';

class LeftDrawerWidget extends StatefulWidget {
  @override
  _LeftDrawerWidgetState createState() => _LeftDrawerWidgetState();
}

class _LeftDrawerWidgetState extends State<LeftDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: Icon(Icons.face, size: 48.0, color: Colors.white),
            accountName: Text('Simon Peter Ojok'),
            accountEmail: Text('simonojok19@gmail.com'),
            otherAccountsPictures: <Widget>[
              Icon(Icons.bookmark_border, color: Colors.white)
            ],
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/peak.jpg'),
                fit: BoxFit.cover,
              )
            ),
          ),
          MenuListTileWidget(),
        ],
      ),
    );
  }
}