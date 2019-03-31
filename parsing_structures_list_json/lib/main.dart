import 'package:flutter/material.dart';
import './resources/product_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _productService = new ProductService();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Nested structures with Lists from JSON'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Check results on console'),
              RaisedButton(
                onPressed: () {
                  _productService.loadProduct();
                },
                child: Text('Click me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
