import 'package:flutter/material.dart';
import './resources/shape_services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _shape = new ShapeServices();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Parsing data from json'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Check results in console'),
              RaisedButton(
                onPressed: () {
                  _shape.loadShape();
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
