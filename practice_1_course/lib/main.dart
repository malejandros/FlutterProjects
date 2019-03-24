import 'package:flutter/material.dart';
import './home_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app',
      home: HomeManager(),
    );
  }
}
