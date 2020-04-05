import 'package:flutter/material.dart';
import 'package:flutter_app/classes/database.dart';
import 'package:flutter_app/pages/edit_entry.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Database _database;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Journals'),),
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

  Future<List<Journal>> _loadJournals() async {
    await DatabaseFileRoutines().readJournals().then((jouralsJson){
      _database = databaseFromJson(jouralsJson);
      _database.journals.sort((comp1, comp2) => comp2.date.compareTo(comp1.date));
    }).catchError((onError) => print(onError));
    return _database.journals;
  }

  Widget _buildListViewSeparated(AsyncSnapshot snapshot) {
    return ListView.separated(
      itemCount: snapshot.data.length,
      itemBuilder: (BuildContext context, int index) {
        String _titleDate = DateFormat.yMMMd().format(DateTime.parse(snapshot.data[index].date));
        String _subtitle = snapshot.data[index].mood + "\n" + snapshot.data[index].note;
        return Dismissible(
          key: Key(snapshot.data[index].id),
          background: Container(
            color: Colors.red,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 16.0),
            child: Icon(
              Icons.delete,
              color: Colors.white
            ),
          ),
          secondaryBackground: Container(
            color: Colors.red,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.delete,
              color: Colors.white
            ),
          ),
          child: ListTile(
            leading: Column(
              children: <Widget>[
                Text(
                  DateFormat.d().format(DateTime.parse(snapshot.data[index].date)),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                    color: Colors.blue
                  ),
                ),
                Text(
                  DateFormat.E().format(DateTime.parse(snapshot.data[index].date))
                ),
              ],
            ),
            title: Text(
              _titleDate,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(_subtitle),
            onTap: () {
              _addOrEditJournal(
                add: false,
                index: index,
                journal: snapshot.data[index]
              );
            },
          ),
          onDismissed: (direction) {
            setState(() {
              _database.journals.removeAt(index);
            });
            DatabaseFileRoutines().writeJournals(databaseToJson(_database));
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(color: Colors.grey,);
      },
    );
  }

  void _addOrEditJournal({bool add, int index, journal}) async {
    JournalEdit _journalEdit = JournalEdit(action: '', journal: journal);
    _journalEdit = await Navigator.push(context, MaterialPageRoute(
      builder: (context) => EditEntry(
        add: add,
        index: index,
        journalEdit: _journalEdit,
      ),
      fullscreenDialog: true
    ));
    switch(_journalEdit.action) {
      case 'Save':
        if (add) {
          setState(() {
            _database.journals.add(_journalEdit.journal);
          });
        } else {
          setState(() {
            _database.journals[index] = _journalEdit.journal;
          });
        }
        DatabaseFileRoutines().writeJournals(databaseToJson(_database));
        break;
      case 'Cancel': break;
      default: break;
    }
  }
}