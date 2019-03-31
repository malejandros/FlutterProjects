import 'package:flutter/material.dart';

class ConverterRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return displayCategory('Test');
  }
}

Widget displayCategory(String title) {
  return Scaffold(
    appBar: AppBar(
      title: Text(title),
      centerTitle: true,
    ),
    body: Container(
      height: 400,
      child: Column(
        children: <Widget>[
          Container(
            child: Form(
              child: Text('test'),
            ),
          )
        ],
      ),
    ),
  );
}
