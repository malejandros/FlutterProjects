import 'package:flutter/material.dart';
import './resources/address_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _addressService = new AddressService();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Parsing array from json'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Check resultset in console'),
              RaisedButton(
                onPressed: () {
                  _addressService.loadAddress();
                },
                child: Text('Start parsing'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
