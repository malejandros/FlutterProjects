import 'package:flutter/material.dart';

class HomeManager extends StatefulWidget {
  @override
  _HomeManagerState createState() => _HomeManagerState();
}

class _HomeManagerState extends State<HomeManager> {
  String text = 'Hello';

  void _changeText(){
    setState(() {
      if(text.startsWith('H')){
        text = 'Bye!!!';
      }else{
        text = 'Hello';
      }
    });
  }

  Widget _bodyWidget(){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(text),
          ),
          RaisedButton(
            child: Text('Click me!'),
            onPressed: _changeText ,
          )
        ],
      ),
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Home'),
        centerTitle: true,
      ),
      body: _bodyWidget(),
    );
  }
}
