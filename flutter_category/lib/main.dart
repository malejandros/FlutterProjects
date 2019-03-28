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
  return Container(
    height: 100.0,
    color: const Color.fromRGBO(255, 255, 150, 1.0),
    padding: EdgeInsets.all(2.0),
    child: Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(50.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                IconData(58126, fontFamily: 'MaterialIcons'),
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
        ),
        onTap: () {
          print('I was tapped');
        },
      ),
    ),
    );
}


