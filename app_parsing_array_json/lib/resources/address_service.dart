import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import '../models/address_model.dart';

class AddressService {
  Future<String> _loadAddressAsset() async {
    return await rootBundle.loadString('assets/address.json');
  }

  Future loadAddress() async {
    String jsonString = await _loadAddressAsset();
    final jsonResponse = json.decode(jsonString);
    Address address = new Address.fromJson(jsonResponse);
    print('City: ' + address.city);
    for (var street in address.streets) {
      print(street);
    }
  }
}
