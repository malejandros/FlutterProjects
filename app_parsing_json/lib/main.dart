import 'package:flutter/material.dart';
import './src/resources/student_services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _studentService = new StudentService();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Parsing JSON'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Text('Check resultset in console'),
            ),
            RaisedButton(
              onPressed: () {
                _studentService.loadStudent();
              },
              child: Text('Click me'),
            )
          ],
        ),
      ),
    );
  }
}
