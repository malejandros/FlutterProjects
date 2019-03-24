import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String myText = "Welcome to my app";

  void _changeText(){
    setState(() {
      if(myText.startsWith('W')){
        myText = "Hello my friend";
      }
      else{
        myText = "Welcome to my app";
      }
    });
  }

  Widget _bodyWidget(){
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(myText, style: TextStyle(
              fontSize: 20
            )),
            RaisedButton(
              child: Text('Click me!'),
              color: Colors.green,
              textColor: Colors.white,
              onPressed: _changeText,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: _bodyWidget(),
    );
  }
}



