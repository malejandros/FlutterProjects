import './image_model.dart';

class Product {
  final int id;
  final String nombre;
  final List<Image> images;

  Product({this.id, this.nombre, this.images});

  factory Product.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['images'] as List;
    List<Image> imageList = list.map((i) => Image.fromJson(i)).toList();
    return Product(
      id: parsedJson['id'],
      nombre: parsedJson['nombre'],
      images: imageList,
    );
  }
}
