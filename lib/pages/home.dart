import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  Order _order = Order();

  String _validateItemRequired(String value) {
    return value.isEmpty ? 'Item Required': null;
  }

  String _validateItemCount(String value) {
    int _valueAsInteger = value.isEmpty ? 0 : int.tryParse(value);
    return _valueAsInteger == 0 ? 'At least one Item is required': null;
  }

  void _submitOrder() {
    if (_formStateKey.currentState.validate()) {
      _formStateKey.currentState.save();
      print('Order Item: ${_order.item}');
      print('Order Quantity: ${_order.quantity}');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        flexibleSpace: SafeArea(
          child: Icon(Icons.photo_camera, size: 75.0, color: Colors.white70),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Form(
              key: _formStateKey,
              autovalidate: true,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Espresso',
                        labelText: 'Item',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Order {
  String item;
  int quantity;
}
