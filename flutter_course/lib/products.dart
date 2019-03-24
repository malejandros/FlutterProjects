import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products) {
    print('products widget constructor');
  }
  @override
  Widget build(BuildContext context) {
    print('products widget build');
    return Column(
      children: products
          .map((p) => Card(
                child: Column(
                  children: <Widget>[
                    // Image.asset("assets/mate.jpg"),
                    Text(p)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
