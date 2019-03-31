import 'package:flutter/material.dart';
import 'my_category.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MyCategory()
    );
  }
}