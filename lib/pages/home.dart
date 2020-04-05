import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        initialData: [],
        future: _loadJournals(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return !snapshot.hasData
            ? Center(child: CircularProgressIndicator(),)
            : _buildListViewSeparated(snapshot);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add Journal Entry',
        child: Icon(Icons.add),
        onPressed: () { _addOrEditJournal(add: true, index: -1, journal: Journal()); },
      ),
    );
  }

  _loadJournals() {}

  _buildListViewSeparated(AsyncSnapshot snapshot) {}

  void _addOrEditJournal({bool add, int index, journal}) {}
}

class Journal {
}