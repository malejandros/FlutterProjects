class Address {
  final String city;
  final List<String> streets;

  Address({this.city, this.streets});

  factory Address.fromJson(Map<String, dynamic> parsedJson) {
    var streetsFromJson = parsedJson['streets'];
    // convert this to a List<String>
    List<String> streetList = new List<String>.from(streetsFromJson);
    return new Address(city: parsedJson['city'], streets: streetList);
  }
}
