import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('GET Request'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          fetchData();
        },
      ),
    ));
  }

  void fetchData() async {
    print('inside fetchData');
    var result = await get('https://jsonplaceholder.typicode.com/photos');
    print(result.body);
  }
}

/*
void fetchData()  {
  get('https://jsonplaceholder.typicode.com/photos').then((result){
    print(result.body);
  });
*/
