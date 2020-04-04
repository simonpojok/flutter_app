import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Layout',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black54),
        brightness: Brightness.light,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.cloud_queue),
            onPressed: () {},
          )
        ],
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildJournalHeaderImage(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildJournalEntry(),
                  Divider(),
                  _buildJournalWeather(),
                  Divider(),
                  _buildJournalTags(),
                  Divider(),
                  _buildJournalFooterImages(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Image _buildJournalHeaderImage() {
    return Image(
      image: AssetImage('assets/images/present.jpg'),
      fit: BoxFit.cover,
    );
  }

  Column _buildJournalEntry() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'My BirthDay',
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold
          ),
        ),
        Divider(),
        Text(
          '''It’s going to be a great birthday. We are going out for dinner at my
          favorite place, then watch a movie after we go to the gelateria for ice cream and
          espresso.''',
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }

  _buildJournalWeather() {}

  _buildJournalTags() {}

  _buildJournalFooterImages() {}
}
