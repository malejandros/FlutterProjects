import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: myCategory(),
    );
  }
}

Widget myCategory(){
  return Scaffold(
    appBar: AppBar(
      title: Text(
        'Unit Converter',
        style: TextStyle(
          fontSize: 30.0,
        ),
      ),
    ),
    body: Container(
      height: 400.0,
      color: const Color.fromRGBO(255, 255, 150, 1.0),
      padding: EdgeInsets.all(2.0),
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.circular(50.0),
          child: ListView(
            children: <Widget>[
              makeIcons(58126),
              makeIcons(59670),
              makeIcons(58311),
              makeIcons(59506),
              makeIcons(59691),
              makeIcons(59694),
              makeIcons(57708),
            ],
          ),
          onTap: () {
            print('I was tapped');
          },
        ),
      ),
    ),
  );
}

Widget makeIcons(num noIcon){
  return Row(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          IconData(noIcon, fontFamily: 'MaterialIcons'),
          size: 60.0,
        ),
      ),
      Center(
        child: Text(
          'My icon',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24),
        ),
      )
    ],
  );
}


