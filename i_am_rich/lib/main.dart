import 'package:flutter/material.dart';

// The main function is the starting point of all our Flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true,
        ),
        body: Center(
          child: Image(
            image:
                //NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg'),
                AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
