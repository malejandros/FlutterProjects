class Image {
  final int id;
  final String imageName;

  Image({this.id, this.imageName});

  factory Image.fromJson(Map<String, dynamic> parsedJson) {
    return Image(
      id: parsedJson['id'],
      imageName: parsedJson['imageName'],
    );
  }
}
