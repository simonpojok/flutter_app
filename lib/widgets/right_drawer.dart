import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/menu_list_tile.dart';

class RightDrawerWidget extends StatefulWidget {
  @override
  _RightDrawerWidgetState createState() => _RightDrawerWidgetState();
}

class _RightDrawerWidgetState extends State<RightDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(),
          MenuListTileWidget(),
        ],
      ),
    );
  }
}