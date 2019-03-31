import 'package:flutter/material.dart';
import './resources/photo_services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _photoService = new PhotoService();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List map from JSON'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Check results in console'),
              RaisedButton(
                onPressed: () {
                  _photoService.loadPhotoList();
                },
                child: Text('Click me'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
