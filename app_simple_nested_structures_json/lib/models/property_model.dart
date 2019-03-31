class Property {
  final double width;
  final double breadth;

  Property({this.width, this.breadth});

  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(width: json['width'], breadth: json['breadth']);
  }
}
