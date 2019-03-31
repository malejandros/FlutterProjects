import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import '../models/product_model.dart';

class ProductService {
  Future<String> _loadProduct() async {
    return await rootBundle.loadString('assets/product.json');
  }

  Future loadProduct() async {
    String jsonString = await _loadProduct();
    final jsonResponse = json.decode(jsonString);
    Product product = new Product.fromJson(jsonResponse);
    for (var product in product.images) {
      print(product.imageName);
    }
  }
}
